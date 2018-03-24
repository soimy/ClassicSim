
#include "Character.h"
#include "Race.h"
#include "Engine.h"
#include "Equipment.h"
#include "Mechanics.h"
#include "TalentTree.h"

#include <QDebug>

Character::Character(Race* race, Engine* engine, Equipment* equipment, QObject* parent) :
    QObject(parent)
{
    this->race = race;
    this->engine = engine;
    this->equipment = equipment;
    this->STR = race->get_base_strength();
    this->AGI = race->get_base_agility();
    this->STAM = race->get_base_stamina();
    this->INT = race->get_base_intellect();
    this->SPI = race->get_base_spirit();
    this->clvl = 1;
    this->percent_hit = 0.0;
    this->percent_crit = 0.0;
    this->percent_attack_speed = 0.0;
    this->melee_attacking = false;
    this->last_action = 0 - this->global_cooldown();
    this->max_talent_points = 51;
}

Race* Character::get_race(void) {
    return this->race;
}

int Character::get_strength(void) {
    return STR;
}

int Character::get_agility(void) {
    return AGI;
}

int Character::get_stamina(void) {
    return STAM;
}

int Character::get_intellect(void) {
    return int(float(INT) * race->get_int_multiplier());
}

int Character::get_spirit(void) {
    return int(float(SPI) * race->get_spirit_multiplier());
}

float Character::get_hit_chance(void) const {
    return percent_hit;
}

float Character::get_crit_chance(void) const {
    return percent_crit;
}

int Character::get_clvl(void) const {
    return this->clvl;
}

void Character::set_clvl(const int& clvl) {
    this->clvl = clvl;
}

bool Character::is_dual_wielding(void) {
    return equipment->is_dual_wielding();
}

bool Character::is_melee_attacking(void) const {
    return melee_attacking;
}

Engine* Character::get_engine(void) const {
    return this->engine;
}

Equipment* Character::get_equipment(void) const {
    return this->equipment;
}

void Character::add_next_mh_attack(void) {
    return;
}

void Character::add_next_oh_attack(void) {
    return;
}

void Character::start_attack(void) {
    this->melee_attacking = true;

    add_next_mh_attack();

    if (is_dual_wielding()) {
        add_next_oh_attack();
    }
}

void Character::stop_attack(void) {
    // TODO: Also need to clear melee hit event queues to stop next attacks landing.
    this->melee_attacking = false;
}

float Character::global_cooldown() const {
    return 1.5;
}

bool Character::action_ready() const {
    // Allow some rounding errors (this could effectively speed up gcd by 1/10000ths of a second).
    float delta = last_action + global_cooldown() - engine->get_current_priority();
    return delta < 0.0001;
}

int Character::get_melee_ap() {
    return 0;
}

int Character::get_mh_dmg() {
    // TODO: Check if base weapon speed should be used, or hasted.
    MeleeWeapon* mh = equipment->get_mainhand();
    float normalized_dmg = mh->get_random_dmg() / mh->get_base_weapon_speed();
    float normalized_ap = get_melee_ap() / 14;

    return (normalized_dmg + normalized_ap) * mh->get_base_weapon_speed();
}

int Character::get_oh_dmg() {
    // TODO: Check if base weapon speed should be used, or hasted.
    MeleeWeapon* oh = equipment->get_offhand();
    float normalized_dmg = oh->get_random_dmg() / oh->get_base_weapon_speed();
    float normalized_ap = get_melee_ap() / 14;

    return (normalized_dmg + normalized_ap) * oh->get_base_weapon_speed();
}

int Character::get_mh_wpn_skill() {
    int racial_bonus = 0;
    switch (equipment->get_mainhand()->get_weapon_type()) {
    case WeaponTypes::AXE:
        racial_bonus += race->get_axe_bonus();
        break;
    case WeaponTypes::SWORD:
        racial_bonus += race->get_sword_bonus();
        break;
    case WeaponTypes::MACE:
        racial_bonus += race->get_mace_bonus();
        break;
    }
    return get_clvl() * 5 + racial_bonus;
}

int Character::get_oh_wpn_skill() {
    int racial_bonus = 0;
    switch (equipment->get_offhand()->get_weapon_type()) {
    case WeaponTypes::AXE:
        racial_bonus += race->get_axe_bonus();
        break;
    case WeaponTypes::SWORD:
        racial_bonus += race->get_sword_bonus();
        break;
    case WeaponTypes::MACE:
        racial_bonus += race->get_mace_bonus();
        break;
    }
    return get_clvl() * 5 + racial_bonus;
}

void Character::increase_hit(float increase) {
    percent_hit += increase;
}

void Character::increase_crit(float increase) {
    percent_crit += increase;
}

void Character::increase_attack_speed(float increase) {
    percent_attack_speed += increase;
}

void Character::decrease_hit(float decrease) {
    percent_hit -= decrease;
}

void Character::decrease_crit(float decrease) {
    percent_crit -= decrease;
}

void Character::decrease_attack_speed(float decrease) {
    percent_attack_speed -= decrease;
}

float Character::get_mh_wpn_speed() {
    float wpn_speed = equipment->get_mainhand()->get_base_weapon_speed();
    wpn_speed /= 1 + percent_attack_speed;
    return wpn_speed;
}

float Character::get_oh_wpn_speed() {
    float wpn_speed = equipment->get_offhand()->get_base_weapon_speed();
    wpn_speed /= 1 + percent_attack_speed;
    return wpn_speed;
}

QString Character::getIcon(const QString tree_position, const QString talent_position) const {
    if (!talent_trees.contains(tree_position)) {
        qDebug() << "Character::getIcon could not find tree position" << tree_position;
        return "";
    }

    return talent_trees[tree_position]->get_icon(talent_position);
}

bool Character::showPosition(const QString tree_position, const QString talent_position) const {
    return getIcon(tree_position, talent_position) != "";
}

bool Character::isAvailable(const QString tree_position, const QString talent_position) const {
    if (!talent_trees.contains(tree_position)) {
        qDebug() << "Character::isAvailable could not find tree position" << tree_position;
        return false;
    }

    return talent_trees[tree_position]->is_active(talent_position);
}

bool Character::isMaxed(const QString tree_position, const QString talent_position) const {
    if (!talent_trees.contains(tree_position)) {
        qDebug() << "Character::isMaxed could not find tree position" << tree_position;
        return false;
    }

    return talent_trees[tree_position]->is_maxed(talent_position);
}

QString Character::getRank(const QString tree_position, const QString talent_position) const {
    if (!talent_trees.contains(tree_position)) {
        qDebug() << "Character::getRank could not find tree position" << tree_position;
        return "0";
    }

    return QString::number(talent_trees[tree_position]->get_current_rank(talent_position));
}

void Character::incrementRank(const QString tree_position, const QString talent_position) {
    if (!talent_trees.contains(tree_position)) {
        qDebug() << "Character::incrementRank could not find tree position" << tree_position;
        return;
    }

    assert(max_talent_points >= 0);

    if (max_talent_points == 0)
        return;

    if (talent_trees[tree_position]->increment_rank(talent_position)) {
        --max_talent_points;
        Q_EMIT talentsUpdated();
    }
}
