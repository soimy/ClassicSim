#include "RestorationShaman.h"

#include "Shaman.h"
#include "ShamanSpells.h"
#include "SpellRankGroup.h"
#include "TalentStatIncrease.h"

RestorationShaman::RestorationShaman(Shaman* shaman) :
    TalentTree("Restoration", "Assets/shaman/shaman_restoration.jpg"), shaman(shaman), spells(static_cast<ShamanSpells*>(shaman->get_spells())) {
    talent_names_to_locations = {
        {"Improved Healing Wave", "1ML"}, {"Tidal Focus", "1MR"},        {"Improved Reincarnation", "2LL"}, {"Ancestral Healing", "2ML"},
        {"Totemic Focus", "2MR"},         {"Nature's Guidance", "3LL"},  {"Healing Focus", "3ML"},          {"Totemic Mastery", "3MR"},
        {"Healing Grace", "3RR"},         {"Restorative Totems", "4ML"}, {"Tidal Mastery", "4MR"},          {"Healing Way", "5LL"},
        {"Nature's Swiftness", "5MR"},    {"Purification", "6MR"},       {"Mana Tide Totem", "7ML"},
    };

    QMap<QString, Talent*> tier1 {{"1ML", new Talent(shaman, this, "Improved Healing Wave", "1ML", "Assets/spell/Spell_nature_resistmagic.png", 5,
                                                     "Reduces the casting time of your Healing Wave spell by 0.%1 sec.",
                                                     QVector<QPair<unsigned, unsigned>> {{1, 1}})},
                                  {"1MR",
                                   new Talent(shaman, this, "Tidal Focus", "1MR", "Assets/spell/Spell_frost_manarecharge.png", 5,
                                              "Reduces the Mana cost of your healing spells by %1%.", QVector<QPair<unsigned, unsigned>> {{1, 1}})}};
    add_talents(tier1);

    QMap<QString, Talent*> tier2 {{"2LL", new Talent(shaman, this, "Improved Reincarnation", "2LL", "Assets/spell/Spell_nature_reincarnation.png", 2,
                                                     "Reduces the cooldown of your Reincarnation spell by %1 min and increases the amount of health "
                                                     "and mana you reincarnate with by an additional %2%.",
                                                     QVector<QPair<unsigned, unsigned>> {{10, 10}, {10, 10}})},
                                  {"2MR", new Talent(shaman, this, "Totemic Focus", "2MR", "Assets/spell/Spell_nature_moonglow.png", 5,
                                                     "Reduces the mana cost of your totems by %1%.", QVector<QPair<unsigned, unsigned>> {{5, 5}})}};
    add_ancestral_healing(tier2);
    add_talents(tier2);

    QMap<QString, Talent*> tier3 {{"3ML", new Talent(shaman, this, "Healing Focus", "3ML", "Assets/spell/Spell_nature_healingwavelesser.png", 5,
                                                     "Gives you a %1% chance to avoid interruption caused by damage while casting any healing spell.",
                                                     QVector<QPair<unsigned, unsigned>> {{14, 14}})},
                                  {"3MR", new Talent(shaman, this, "Totemic Mastery", "3MR", "Assets/spell/Spell_nature_nullward.png", 1,
                                                     "The radius of your totems that affect friendly targets is increased to 30yd.",
                                                     QVector<QPair<unsigned, unsigned>> {})},
                                  {"3RR", new Talent(shaman, this, "Healing Grace", "3RR", "Assets/spell/Spell_nature_healingtouch.png", 3,
                                                     "Reduces the threat generated by your healing spells by %1%.",
                                                     QVector<QPair<unsigned, unsigned>> {{5, 5}})}};
    add_natures_guidance(tier3);
    add_talents(tier3);

    QMap<QString, Talent*> tier4 {{"4ML", new Talent(shaman, this, "Restorative Totems", "4ML", "Assets/spell/Spell_nature_manaregentotem.png", 5,
                                                     "Increases the effect of your Mana Spring and Healing Stream Totems by %1%.",
                                                     QVector<QPair<unsigned, unsigned>> {{5, 5}})}};
    add_tidal_mastery(tier4);
    add_talents(tier4);

    QMap<QString, Talent*> tier5 {
        {"5MR", new Talent(shaman, this, "Nature's Swiftness", "5MR", "Assets/spell/Spell_nature_ravenform.png", 1,
                           "When activated, your next Nature spell with a casting time less than 10 sec. becomes an instant cast spell.",
                           QVector<QPair<unsigned, unsigned>> {})}};
    add_healing_way(tier5);
    add_talents(tier5);

    QMap<QString, Talent*> tier6 {
        {"6MR", new Talent(shaman, this, "Purification", "6MR", "Assets/spell/Spell_frost_wizardmark.png", 5,
                           "Increases the effectiveness of your healing spells by %1%.", QVector<QPair<unsigned, unsigned>> {{2, 2}})}};
    add_talents(tier6);

    QMap<QString, Talent*> tier7 {{"7ML", new Talent(shaman, this, "Mana Tide Totem", "7ML", "Assets/spell/Spell_frost_summonwaterelemental.png", 1,
                                                     "Summons a Mana Tide Totem with 5 health at the feet of the caster for 12 sec that restores 170 "
                                                     "mana every 3 seconds to group members within 20 yards.",
                                                     QVector<QPair<unsigned, unsigned>>())}};
    add_talents(tier7);

    talents["4ML"]->talent->set_bottom_child(talents["7ML"]->talent);
    talents["7ML"]->talent->set_parent(talents["4ML"]->talent);
}

void RestorationShaman::add_ancestral_healing(QMap<QString, Talent*>& talent_tier) {
    QString base_str = "Increases your target's armor value by %1% for 15 sec after getting a critical effect from on of your healing spells.";
    QMap<unsigned, QString> rank_descriptions {{0, base_str.arg("8")}, {1, base_str.arg("8")}, {2, base_str.arg("16")}, {3, base_str.arg("25")}};
    Talent* talent = new Talent(shaman, this, "Ancestral Healing", "2ML", "Assets/spell/Spell_nature_undyingstrength.png", 3, rank_descriptions);

    add_talent_to_tier(talent_tier, talent);
}

void RestorationShaman::add_natures_guidance(QMap<QString, Talent*>& talent_tier) {
    auto talent = new TalentStatIncrease(shaman, this, "Nature's Guidance", "3LL", "Assets/spell/Spell_frost_stun.png", 3,
                                         "Increases your chance to hit with melee attacks and spells by %1%.",
                                         QVector<QPair<unsigned, unsigned>> {{1, 1}},
                                         QVector<QPair<TalentStat, unsigned>> {{TalentStat::MeleeHit, 100}, {TalentStat::SpellHit, 100}});

    add_talent_to_tier(talent_tier, talent);
}

void RestorationShaman::add_tidal_mastery(QMap<QString, Talent*>& talent_tier) {
    Talent* talent = get_new_talent(shaman, "Tidal Mastery", "4MR", "Assets/spell/Spell_nature_tranquility.png", 5,
                                    "Increases the critical effect chance of your healing and lightning spells by %1%.",
                                    QVector<QPair<unsigned, unsigned>> {{1, 1}},
                                    QVector<SpellRankGroup*> {spells->get_spell_rank_group_by_name("Lightning Bolt")});

    add_talent_to_tier(talent_tier, talent);
}

void RestorationShaman::add_healing_way(QMap<QString, Talent*>& talent_tier) {
    QString base_str = "Your Healing Wave spells have a %1% chance to increase the effect of subsequent Healing Wave spells on that target by 6% for "
                       "15 sec. This effect will stack up to 3 times.";
    QMap<unsigned, QString> rank_descriptions {{0, base_str.arg("33")}, {1, base_str.arg("33")}, {2, base_str.arg("66")}, {3, base_str.arg("100")}};
    Talent* talent = new Talent(shaman, this, "Healing Way", "5LL", "Assets/spell/Spell_nature_healingway.png", 3, rank_descriptions);

    add_talent_to_tier(talent_tier, talent);
}
