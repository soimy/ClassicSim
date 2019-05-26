QT += quick charts
CONFIG += c++11 console

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += main.cpp \
    Class/Common/Spells/UseItem.cpp \
    Class/Paladin/Buffs/JudgementOfTheCrusader.cpp \
    Class/Paladin/Buffs/SanctityAuraBuff.cpp \
    Class/Paladin/Buffs/SealOfTheCrusaderBuff.cpp \
    Class/Paladin/Buffs/Vengeance.cpp \
    Class/Paladin/Procs/SealOfCommandProc.cpp \
    Class/Paladin/Spells/Consecration.cpp \
    Class/Paladin/Spells/Judgement.cpp \
    Class/Paladin/Spells/MainhandAttackPaladin.cpp \
    Class/Paladin/Spells/PaladinSeal.cpp \
    Class/Paladin/Spells/SanctityAura.cpp \
    Class/Paladin/Spells/SealOfCommand.cpp \
    Class/Paladin/Spells/SealOfTheCrusader.cpp \
    Class/Common/Buffs/Nightfall.cpp \
    Class/Common/Procs/GenericBuffProc.cpp \
    Class/Common/Procs/GenericSpellProc.cpp \
    Class/Common/Spells/DemonicRune.cpp \
    Class/Common/Spells/FireballInstant.cpp \
    Class/Common/Spells/NightDragonsBreath.cpp \
    Class/Shaman/Buffs/StormstrikeBuff.cpp \
    Class/Shaman/ShamanEnchants.cpp \
    Class/Shaman/Spells/Stormstrike.cpp \
    Class/Shaman/TalentTrees/Elemental.cpp \
    Class/Shaman/TalentTrees/Enhancement.cpp \
    Class/Shaman/TalentTrees/RestorationShaman.cpp \
    Event/Event.cpp \
    Engine/Engine.cpp \
    Event/Events/EncounterEnd.cpp \
    Event/Events/EncounterStart.cpp \
    Phases/ContentPhase.cpp \
    Phases/PhaseRequirer.cpp \
    Queue/Queue.cpp \
    Character/Race/Races/Human.cpp \
    Character/Race/Races/Dwarf.cpp \
    Character/Race/Races/NightElf.cpp \
    Character/Race/Races/Gnome.cpp \
    Character/Race/Races/Orc.cpp \
    Character/Race/Races/Undead.cpp \
    Character/Race/Races/Tauren.cpp \
    Character/Race/Races/Troll.cpp \
    Class/Warrior/Warrior.cpp \
    Class/Priest/Priest.cpp \
    Class/Rogue/Rogue.cpp \
    Class/Mage/Mage.cpp \
    Class/Druid/Druid.cpp \
    Class/Hunter/Hunter.cpp \
    Class/Warlock/Warlock.cpp \
    Class/Shaman/Shaman.cpp \
    Class/Paladin/Paladin.cpp \
    Character/Character.cpp \
    Event/Events/PlayerAction.cpp \
    Spells/CooldownControl.cpp \
    Spells/SpellRankGroup.cpp \
    Talent/CharacterTalents.cpp \
    Test/Paladin/Spells/TestConsecration.cpp \
    Test/Paladin/Spells/TestJudgement.cpp \
    Test/Paladin/Spells/TestMainhandAttackPaladin.cpp \
    Test/Paladin/Spells/TestSealOfCommand.cpp \
    Test/Paladin/Spells/TestSealOfTheCrusader.cpp \
    Test/Paladin/Talents/TestPaladinTalentStatIncrease.cpp \
    Test/Paladin/TestSpellPaladin.cpp \
    Test/Shaman/Spells/TestStormstrike.cpp \
    Test/Shaman/Talents/TestElemental.cpp \
    Test/Shaman/Talents/TestEnhancement.cpp \
    Test/Shaman/Talents/TestRestorationShaman.cpp \
    Test/Shaman/TestShaman.cpp \
    Test/Shaman/TestSpellShaman.cpp \
    Test/Target/TestTarget.cpp \
    Test/Test.cpp \
    Equipment/Equipment.cpp \
    CombatRoll/CombatRoll.cpp \
    Spells/Spell.cpp \
    Class/Warrior/Spells/Bloodthirst.cpp \
    Event/Events/OffhandMeleeHit.cpp \
    Event/Events/MainhandMeleeHit.cpp \
    Class/Warrior/Spells/Whirlwind.cpp \
    Class/Warrior/Spells/Execute.cpp \
    Class/Warrior/Spells/HeroicStrike.cpp \
    Class/Warrior/Spells/Overpower.cpp \
    Class/Warrior/Spells/Hamstring.cpp \
    Class/Warrior/Spells/Recklessness.cpp \
    CombatRoll/AttackTables/MeleeSpecialTable.cpp \
    Mechanics/Mechanics.cpp \
    Spells/Buff.cpp \
    Class/Warrior/Buffs/Flurry.cpp \
    Event/Events/BuffRemoval.cpp \
    Talent/TalentTree.cpp \
    Talent/Talent.cpp \
    Class/Warrior/TalentTrees/Arms.cpp \
    Class/Warrior/TalentTrees/Fury.cpp \
    Class/Warrior/TalentTrees/Protection.cpp \
    Class/Warrior/TalentTrees/Fury/Cruelty.cpp \
    Class/Warrior/TalentTrees/Arms/Impale.cpp \
    GUI/GUIControl.cpp \
    Class/Warrior/TalentTrees/Arms/TacticalMastery.cpp \
    Class/Warrior/TalentTrees/Arms/TwoHandedWeaponSpecialization.cpp \
    Class/Warrior/TalentTrees/Arms/AxeSpecialization.cpp \
    Class/Warrior/TalentTrees/Arms/PolearmSpecialization.cpp \
    Character/Stats.cpp \
    Class/Warrior/Spells/DeepWounds.cpp \
    Event/Events/DotTick.cpp \
    Class/Warrior/Procs/UnbridledWrath.cpp \
    Class/Warrior/Spells/DeathWish.cpp \
    Class/Warrior/Buffs/DeathWishBuff.cpp \
    Class/Warrior/Buffs/BattleShoutBuff.cpp \
    Class/Warrior/Spells/BattleShout.cpp \
    Class/Warrior/Spells/BerserkerRage.cpp \
    Equipment/EquipmentDb/EquipmentDb.cpp \
    Equipment/Item/Item.cpp \
    GUI/Models/ItemModel.cpp \
    GUI/Models/WeaponModel.cpp \
    Equipment/EquipmentDb/ItemFileReader.cpp \
    Equipment/EquipmentDb/WeaponFileReader.cpp \
    Equipment/Item/Weapon.cpp \
    Test/Warrior/TestWarrior.cpp \
    Test/Warrior/Spells/TestExecute.cpp \
    Test/TestSpell.cpp \
    Test/Warrior/TestSpellWarrior.cpp \
    Test/Warrior/Spells/TestHeroicStrike.cpp \
    Test/Warrior/Spells/TestBloodthirst.cpp \
    Class/Common/Spells/MainhandAttack.cpp \
    Class/Common/Spells/OffhandAttack.cpp \
    Class/Warrior/Spells/MainhandAttackWarrior.cpp \
    Class/Warrior/Spells/OffhandAttackWarrior.cpp \
    Test/Warrior/Spells/TestMainhandAttackWarrior.cpp \
    Test/Warrior/Spells/TestWhirlwind.cpp \
    Test/Warrior/Spells/TestOverpower.cpp \
    Test/TestBuff.cpp \
    Test/Warrior/Buffs/TestFlurryWarrior.cpp \
    Test/Warrior/TestBuffWarrior.cpp \
    Test/Warrior/Spells/TestOffhandAttackWarrior.cpp \
    Test/Warrior/Spells/TestDeepWounds.cpp \
    Class/Warrior/Spells/Bloodrage.cpp \
    Event/Events/ResourceGain.cpp \
    Test/Warrior/Spells/TestBloodrage.cpp \
    Spells/Proc.cpp \
    Class/Common/Enchants/WindfuryTotemAttack.cpp \
    Class/Common/Enchants/Crusader.cpp \
    Spells/ProcPPM.cpp \
    Class/Common/Buffs/HolyStrength.cpp \
    Class/Common/Enchants/FieryWeapon.cpp \
    Character/CharacterStats.cpp \
    Class/Warrior/WarriorSpells.cpp \
    Statistics/Charts/PieChart.cpp \
    GUI/Models/PieChartModel.cpp \
    Statistics/ClassStatistics.cpp \
    Faction/Faction.cpp \
    Target/Target.cpp \
    Statistics/StatisticsSpell.cpp \
    Statistics/StatisticsBuff.cpp \
    Statistics/StatisticsResource.cpp \
    Statistics/StatisticsProc.cpp \
    Test/Warrior/Procs/TestUnbridledWrath.cpp \
    Test/Warrior/TestProcWarrior.cpp \
    Test/TestProc.cpp \
    Class/Common/Procs/ExtraAttackOnNextSwingProc.cpp \
    Class/Common/Buffs/ExtraAttackOnNextSwingBuff.cpp \
    Class/Common/Procs/ExtraAttackInstantProc.cpp \
    Class/Common/GeneralProcs.cpp \
    Character/CharacterDecoder.cpp \
    Character/CharacterEncoder.cpp \
    Thread/SimulationThreadPool.cpp \
    Thread/SimulationRunner.cpp \
    Class/Common/GeneralBuffs.cpp \
    GUI/Models/BuffModel.cpp \
    Spells/ExternalBuff.cpp \
    Rotation/RotationFileReader.cpp \
    Rotation/Rotation.cpp \
    Rotation/Condition.cpp \
    Rotation/Conditions/ConditionSpell.cpp \
    Rotation/Conditions/ConditionBuff.cpp \
    Rotation/Conditions/ConditionResource.cpp \
    Rotation/Conditions/ConditionVariableBuiltin.cpp \
    CombatRoll/xorshift/xoroshiro128plus.cpp \
    CombatRoll/Random.cpp \
    Class/Warrior/Buffs/RecklessnessBuff.cpp \
    Test/Warrior/Spells/TestRecklessness.cpp \
    Class/Warrior/Spells/BattleStance.cpp \
    Class/Warrior/Spells/BerserkerStance.cpp \
    Class/Warrior/Buffs/BerserkerStanceBuff.cpp \
    Test/Warrior/Spells/TestBerserkerStance.cpp \
    Character/Race/Racials/BloodFury.cpp \
    Character/Race/Racials/BloodFuryBuff.cpp \
    Character/Race/Racials/Berserking.cpp \
    Character/Race/Racials/BerserkingBuff.cpp \
    GUI/Models/DebuffModel.cpp \
    GUI/Models/ItemTypeFilterModel.cpp \
    Class/Warlock/WarlockSpells.cpp \
    Class/Shaman/ShamanSpells.cpp \
    Class/Rogue/RogueSpells.cpp \
    Class/Priest/PriestSpells.cpp \
    Class/Paladin/PaladinSpells.cpp \
    Class/Mage/MageSpells.cpp \
    Class/Hunter/HunterSpells.cpp \
    Class/Druid/DruidSpells.cpp \
    Character/Race/Race.cpp \
    GUI/Models/ActiveItemStatFilterModel.cpp \
    GUI/Models/AvailableItemStatFilterModel.cpp \
    Test/TestSpellDamage.cpp \
    Class/Warrior/Buffs/DefensiveStanceBuff.cpp \
    Test/Warrior/Spells/TestDeathWish.cpp \
    Test/TestCharacterStats.cpp \
    Class/Warrior/TalentTrees/Arms/SwordSpecializationTalent.cpp \
    Class/Warrior/Procs/SwordSpecialization.cpp \
    Test/Warrior/Procs/TestSwordSpecialization.cpp \
    Test/Warrior/Talents/TestTwoHandedWeaponSpecialization.cpp \
    Class/Warrior/Spells/MortalStrike.cpp \
    Test/Warrior/Spells/TestMortalStrike.cpp \
    Class/Warrior/Spells/Slam.cpp \
    Event/Events/CastComplete.cpp \
    Test/Warrior/Spells/TestSlam.cpp \
    Talent/TalentRequirer.cpp \
    Spells/SpellCastingTime.cpp \
    Test/Warrior/Talents/TestFury.cpp \
    GUI/Models/RotationModel.cpp \
    Test/Warrior/Talents/TestArms.cpp \
    GUI/SimSettings.cpp \
    GUI/SimControl.cpp \
    Statistics/NumberCruncher.cpp \
    Class/Common/Enchants/Enchant.cpp \
    Class/Common/Enchants/EnchantStatic.cpp \
    Class/Common/Enchants/EnchantProc.cpp \
    Class/Common/Buffs/ArmorPenetrationBuff.cpp \
    Class/Common/Procs/ArmorPenetrationProc.cpp \
    Class/Common/Spells/InstantSpellAttack.cpp \
    Class/Common/Procs/InstantSpellProc.cpp \
    Test/General/Procs/TestFelstrikerProc.cpp \
    Class/Common/Procs/FelstrikerProc.cpp \
    Class/Common/Buffs/FelstrikerBuff.cpp \
    Spells/SharedBuff.cpp \
    Class/Common/Buffs/EssenceOfTheRed.cpp \
    Class/Common/Spells/PeriodicResourceGainSpell.cpp \
    Rulesets/RulesetControl.cpp \
    GUI/Models/Statistics/MeleeDamageAvoidanceBreakdownModel.cpp \
    GUI/Models/Statistics/MeleeDamageBreakdownModel.cpp \
    Rotation/RotationExecutor.cpp \
    GUI/Models/Statistics/BuffBreakdownModel.cpp \
    GUI/Models/Statistics/ProcBreakdownModel.cpp \
    GUI/Models/Statistics/ResourceBreakdownModel.cpp \
    Class/Common/Buffs/GenericStatBuff.cpp \
    Class/Common/Buffs/JomGabbar.cpp \
    Event/Events/PeriodicRefreshBuff.cpp \
    Class/Common/Buffs/FlatWeaponDamageBuff.cpp \
    Class/Common/Procs/GenericChargeConsumerProc.cpp \
    Class/Common/Spells/UseTrinket.cpp \
    Class/Common/Buffs/NoEffectBuff.cpp \
    Class/Warrior/Spells/Rend.cpp \
    Test/Warrior/Spells/TestRend.cpp \
    Character/EnabledBuffs.cpp \
    Character/EnabledProcs.cpp \
    Class/Warrior/Spells/AngerManagement.cpp \
    GUI/Models/Statistics/DebuffBreakdownModel.cpp \
    GUI/Models/SimScaleModel.cpp \
    GUI/Models/Statistics/ScaleResultModel.cpp \
    Class/Rogue/TalentTrees/Assassination.cpp \
    Class/Rogue/TalentTrees/Combat.cpp \
    Class/Rogue/TalentTrees/Subtlety.cpp \
    Class/Rogue/Spells/Backstab.cpp \
    Resource/Rage.cpp \
    Resource/Energy.cpp \
    Resource/Mana.cpp \
    Test/Rogue/TestRogue.cpp \
    Test/Rogue/TestEnergy.cpp \
    Test/Rogue/TestSpellRogue.cpp \
    Test/Rogue/Spells/TestBackstab.cpp \
    Class/Rogue/Spells/Eviscerate.cpp \
    Test/Rogue/Spells/TestEviscerate.cpp \
    Class/Rogue/Spells/SliceAndDice.cpp \
    Class/Rogue/Buffs/SliceAndDiceBuff.cpp \
    Test/Rogue/Spells/TestSliceAndDice.cpp \
    Test/AttackTables/TestAttackTables.cpp \
    Test/TestTalentTree.cpp \
    Class/Rogue/Spells/AdrenalineRush.cpp \
    Class/Rogue/Buffs/AdrenalineRushBuff.cpp \
    Test/Rogue/Spells/TestAdrenalineRush.cpp \
    Class/Rogue/Spells/BladeFlurry.cpp \
    Class/Rogue/Buffs/BladeFlurryBuff.cpp \
    Test/Rogue/Spells/TestBladeFlurry.cpp \
    Class/Rogue/TalentTrees/Combat/Precision.cpp \
    Class/Rogue/TalentTrees/Combat/DaggerSpecialization.cpp \
    Class/Rogue/Spells/OffhandAttackRogue.cpp \
    Class/Rogue/TalentTrees/Combat/FistWeaponSpecialization.cpp \
    Class/Rogue/TalentTrees/Combat/MaceSpecialization.cpp \
    Class/Rogue/TalentTrees/Combat/WeaponExpertise.cpp \
    Class/Rogue/TalentTrees/Assassination/Malice.cpp \
    Class/Rogue/Spells/SinisterStrike.cpp \
    Test/Rogue/Spells/TestSinisterStrike.cpp \
    Class/Rogue/TalentTrees/Assassination/Murder.cpp \
    Class/Rogue/Procs/Ruthlessness.cpp \
    Class/Rogue/Procs/RelentlessStrikes.cpp \
    Test/Rogue/Procs/TestRelentlessStrikes.cpp \
    Test/Rogue/TestProcRogue.cpp \
    Class/Rogue/Procs/SealFate.cpp \
    Test/Rogue/Procs/TestSealFate.cpp \
    Class/Rogue/TalentTrees/Assassination/Vigor.cpp \
    CombatRoll/AttackTables/MagicAttackTable.cpp \
    Test/TestMechanics.cpp \
    Class/Rogue/Procs/InstantPoison.cpp \
    Class/Rogue/Buffs/InstantPoisonBuff.cpp \
    GUI/Models/EnchantModel.cpp \
    Character/CharacterEnchants.cpp \
    Class/Warrior/WarriorEnchants.cpp \
    Class/Rogue/RogueEnchants.cpp \
    Test/Rotation/TestConditionVariableBuiltin.cpp \
    Test/Rogue/Talents/TestAssassination.cpp \
    Test/Rogue/Talents/TestCombat.cpp \
    Test/Rogue/Talents/TestSubtlety.cpp \
    Class/Rogue/TalentTrees/Subtlety/SerratedBlades.cpp \
    Class/Rogue/TalentTrees/Subtlety/Deadliness.cpp \
    Class/Rogue/Spells/Hemorrhage.cpp \
    Test/Rogue/Spells/TestHemorrhage.cpp \
    Equipment/EquipmentDb/SetBonusFileReader.cpp \
    Equipment/SetBonusControl.cpp \
    Spells/SetBonusRequirer.cpp \
    Spells/ItemModificationRequirer.cpp \
    Character/CharacterLoader.cpp \
    Class/Hunter/TalentTrees/BeastMastery.cpp \
    Class/Hunter/TalentTrees/Marksmanship.cpp \
    Class/Hunter/TalentTrees/Survival.cpp \
    Test/Hunter/Talents/TestBeastMastery.cpp \
    Test/Hunter/Talents/TestMarksmanship.cpp \
    Test/Hunter/Talents/TestSurvival.cpp \
    Test/Hunter/TestHunter.cpp \
    Class/Hunter/HunterEnchants.cpp \
    Character/CharacterSpells.cpp \
    CombatRoll/AttackTables/MeleeWhiteHitTable.cpp \
    CombatRoll/AttackTables/RangedWhiteHitTable.cpp \
    Test/Hunter/TestSpellHunter.cpp \
    Class/Hunter/Spells/MultiShot.cpp \
    Test/Hunter/Spells/TestMultiShot.cpp \
    Class/Hunter/Spells/AutoShot.cpp \
    Test/Hunter/Spells/TestAutoShot.cpp \
    Class/Hunter/Spells/AimedShot.cpp \
    Test/Hunter/Spells/TestAimedShot.cpp \
    Test/TestObject.cpp \
    Test/Rotation/TestRotationFileReader.cpp \
    Event/Events/RangedHit.cpp \
    Test/TestMana.cpp \
    Utils/CompareDouble.cpp \
    Talent/TalentStatIncrease.cpp \
    Test/Hunter/Talents/TestHunterTalentStatIncrease.cpp \
    Class/Hunter/Spells/HuntersMark.cpp \
    Class/Hunter/Buffs/HuntersMarkBuff.cpp \
    Class/Hunter/Spells/AspectOfTheHawk.cpp \
    Class/Hunter/Buffs/AspectOfTheHawkBuff.cpp \
    Class/Hunter/Buffs/ImprovedAspectOfTheHawkBuff.cpp \
    Class/Hunter/Procs/ImprovedAspectOfTheHawkProc.cpp \
    Class/Hunter/Spells/RapidFire.cpp \
    Class/Hunter/Buffs/RapidFireBuff.cpp \
    Class/Common/Buffs/DevilsaurEye.cpp \
    Class/Common/Pet/Pet.cpp \
    Event/Events/PetAction.cpp \
    Class/Common/Pet/Species/Cat.cpp \
    Class/Common/Pet/Spells/PetAutoAttack.cpp \
    Event/Events/PetMeleeHit.cpp \
    Class/Common/Pet/Spells/Claw.cpp \
    Resource/Focus.cpp \
    Resource/RegeneratingResource.cpp \
    Class/Common/Spells/ResourceTick.cpp \
    Class/Common/Procs/ManaDrainProc.cpp \
    Class/Hunter/Spells/BestialWrath.cpp \
    Class/Hunter/Buffs/BestialWrathBuff.cpp \
    Class/Hunter/Buffs/FrenzyBuff.cpp \
    Class/Hunter/Procs/FrenzyProc.cpp \
    Equipment/EquipmentDb/ProjectileFileReader.cpp \
    Equipment/Item/Projectile.cpp \
    Class/Common/Spells/ManaPotion.cpp \
    Class/Hunter/Procs/ExposeWeaknessProc.cpp \
    Class/Hunter/Buffs/ExposeWeaknessBuff.cpp \
    Class/Hunter/HunterPet.cpp \
    GUI/Models/RotationConditionsModel.cpp \
    Statistics/StatisticsEngine.cpp \
    GUI/Models/Statistics/EngineBreakdownModel.cpp \
    Statistics/StatisticsRotationExecutor.cpp \
    GUI/Models/Statistics/RotationExecutorBreakdownModel.cpp \
    GUI/Models/Statistics/RotationExecutorListModel.cpp \
    Class/Paladin/TalentTrees/HolyPaladin.cpp \
    Class/Paladin/TalentTrees/ProtectionPaladin.cpp \
    Class/Paladin/TalentTrees/Retribution.cpp \
    Class/Paladin/PaladinEnchants.cpp \
    Test/Paladin/TestPaladin.cpp \
    Test/Paladin/Talents/TestHolyPaladin.cpp \
    Test/Paladin/Talents/TestProtectionPaladin.cpp \
    Test/Paladin/Talents/TestRetribution.cpp

HEADERS += \
    Class/Common/Spells/UseItem.h \
    Class/Paladin/Buffs/JudgementOfTheCrusader.h \
    Class/Paladin/Buffs/SanctityAuraBuff.h \
    Class/Paladin/Buffs/SealOfTheCrusaderBuff.h \
    Class/Paladin/Buffs/Vengeance.h \
    Class/Paladin/Procs/SealOfCommandProc.h \
    Class/Paladin/Spells/Consecration.h \
    Class/Paladin/Spells/Judgement.h \
    Class/Paladin/Spells/MainhandAttackPaladin.h \
    Class/Paladin/Spells/PaladinSeal.h \
    Class/Paladin/Spells/SanctityAura.h \
    Class/Paladin/Spells/SealOfCommand.h \
    Class/Paladin/Spells/SealOfTheCrusader.h \
    Class/Common/Buffs/Nightfall.h \
    Class/Common/Procs/GenericBuffProc.h \
    Class/Common/Procs/GenericSpellProc.h \
    Class/Common/Spells/DemonicRune.h \
    Class/Common/Spells/FireballInstant.h \
    Class/Common/Spells/NightDragonsBreath.h \
    Class/Shaman/Buffs/StormstrikeBuff.h \
    Class/Shaman/ShamanEnchants.h \
    Class/Shaman/Spells/Stormstrike.h \
    Class/Shaman/TalentTrees/Elemental.h \
    Class/Shaman/TalentTrees/Enhancement.h \
    Class/Shaman/TalentTrees/RestorationShaman.h \
    Phases/ContentPhase.h \
    Phases/PhaseRequirer.h \
    Queue/Queue.h \
    Event/Event.h \
    Engine/Engine.h \
    Event/Events/EncounterEnd.h \
    Event/Events/EncounterStart.h \
    Character/Character.h \
    Character/Race/Race.h \
    Character/Race/Races/Human.h \
    Character/Race/Races/Dwarf.h \
    Character/Race/Races/NightElf.h \
    Character/Race/Races/Gnome.h \
    Character/Race/Races/Orc.h \
    Character/Race/Races/Undead.h \
    Character/Race/Races/Tauren.h \
    Character/Race/Races/Troll.h \
    Class/Warrior/Warrior.h \
    Class/Priest/Priest.h \
    Class/Rogue/Rogue.h \
    Class/Mage/Mage.h \
    Class/Druid/Druid.h \
    Class/Hunter/Hunter.h \
    Class/Warlock/Warlock.h \
    Class/Shaman/Shaman.h \
    Class/Paladin/Paladin.h \
    Event/Events/PlayerAction.h \
    Spells/CooldownControl.h \
    Spells/SpellRankGroup.h \
    Talent/CharacterTalents.h \
    Test/Paladin/Spells/TestConsecration.h \
    Test/Paladin/Spells/TestJudgement.h \
    Test/Paladin/Spells/TestMainhandAttackPaladin.h \
    Test/Paladin/Spells/TestSealOfCommand.h \
    Test/Paladin/Spells/TestSealOfTheCrusader.h \
    Test/Paladin/Talents/TestPaladinTalentStatIncrease.h \
    Test/Paladin/TestSpellPaladin.h \
    Test/Shaman/Spells/TestStormstrike.h \
    Test/Shaman/Talents/TestElemental.h \
    Test/Shaman/Talents/TestEnhancement.h \
    Test/Shaman/Talents/TestRestorationShaman.h \
    Test/Shaman/TestShaman.h \
    Test/Shaman/TestSpellShaman.h \
    Test/Target/TestTarget.h \
    Test/Test.h \
    Equipment/Equipment.h \
    Equipment/Item/Item.h \
    Target/Target.h \
    CombatRoll/PhysicalAttackResult.h \
    CombatRoll/MagicAttackResult.h \
    CombatRoll/AttackTables/MagicAttackTable.h \
    CombatRoll/CombatRoll.h \
    CombatRoll/Random.h \
    Spells/Spell.h \
    Class/Warrior/Spells/Bloodthirst.h \
    Event/Events/OffhandMeleeHit.h \
    Event/Events/MainhandMeleeHit.h \
    Class/Warrior/Spells/Whirlwind.h \
    Class/Warrior/Spells/Execute.h \
    Class/Warrior/Spells/HeroicStrike.h \
    Class/Warrior/Spells/Overpower.h \
    Class/Warrior/Spells/Hamstring.h \
    Class/Warrior/Spells/Recklessness.h \
    CombatRoll/AttackTables/MeleeSpecialTable.h \
    Mechanics/Mechanics.h \
    Spells/Buff.h \
    Class/Warrior/Buffs/Flurry.h \
    Event/Events/BuffRemoval.h \
    Talent/TalentTree.h \
    Talent/Talent.h \
    Class/Warrior/TalentTrees/Arms.h \
    Class/Warrior/TalentTrees/Fury.h \
    Class/Warrior/TalentTrees/Protection.h \
    Class/Warrior/TalentTrees/Fury/Cruelty.h \
    Class/Warrior/TalentTrees/Arms/Impale.h \
    GUI/GUIControl.h \
    Class/Warrior/TalentTrees/Arms/TacticalMastery.h \
    Class/Warrior/TalentTrees/Arms/TwoHandedWeaponSpecialization.h \
    Class/Warrior/TalentTrees/Arms/AxeSpecialization.h \
    Class/Warrior/TalentTrees/Arms/PolearmSpecialization.h \
    Character/Stats.h \
    Class/Warrior/Spells/DeepWounds.h \
    Event/Events/DotTick.h \
    Class/Warrior/Procs/UnbridledWrath.h \
    Class/Warrior/Spells/DeathWish.h \
    Class/Warrior/Buffs/DeathWishBuff.h \
    Class/Warrior/Buffs/BattleShoutBuff.h \
    Class/Warrior/Spells/BattleShout.h \
    Class/Warrior/Spells/BerserkerRage.h \
    Equipment/EquipmentDb/EquipmentDb.h \
    GUI/Models/ItemModel.h \
    GUI/Models/WeaponModel.h \
    Equipment/EquipmentDb/ItemFileReader.h \
    Equipment/EquipmentDb/WeaponFileReader.h \
    Equipment/Item/Weapon.h \
    Test/Warrior/TestWarrior.h \
    Test/Warrior/Spells/TestExecute.h \
    Test/TestSpell.h \
    Test/Warrior/TestSpellWarrior.h \
    Test/Warrior/Spells/TestHeroicStrike.h \
    Test/Warrior/Spells/TestBloodthirst.h \
    Class/Common/Spells/MainhandAttack.h \
    Class/Common/Spells/OffhandAttack.h \
    Class/Warrior/Spells/MainhandAttackWarrior.h \
    Class/Warrior/Spells/OffhandAttackWarrior.h \
    Test/Warrior/Spells/TestMainhandAttackWarrior.h \
    Test/Warrior/Spells/TestWhirlwind.h \
    Test/Warrior/Spells/TestOverpower.h \
    Test/TestBuff.h \
    Test/Warrior/Buffs/TestFlurryWarrior.h \
    Test/Warrior/TestBuffWarrior.h \
    Test/Warrior/Spells/TestOffhandAttackWarrior.h \
    Test/Warrior/Spells/TestDeepWounds.h \
    Event/Events/ResourceGain.h \
    Class/Warrior/Spells/Bloodrage.h \
    Test/Warrior/Spells/TestBloodrage.h \
    Spells/Proc.h \
    Class/Common/Enchants/WindfuryTotemAttack.h \
    Class/Common/Enchants/Crusader.h \
    Spells/ProcPPM.h \
    Class/Common/Buffs/HolyStrength.h \
    Class/Common/Enchants/FieryWeapon.h \
    Character/CharacterStats.h \
    Class/Warrior/WarriorSpells.h \
    Statistics/Charts/PieChart.h \
    GUI/Models/PieChartModel.h \
    Statistics/ClassStatistics.h \
    Faction/Faction.h \
    Statistics/StatisticsSpell.h \
    Statistics/StatisticsBuff.h \
    Statistics/StatisticsResource.h \
    Statistics/StatisticsProc.h \
    Spells/ProcInfo.h \
    Test/Warrior/Procs/TestUnbridledWrath.h \
    Test/Warrior/TestProcWarrior.h \
    Test/TestProc.h \
    Class/Common/Procs/ExtraAttackOnNextSwingProc.h \
    Class/Common/Buffs/ExtraAttackOnNextSwingBuff.h \
    Class/Common/Procs/ExtraAttackInstantProc.h \
    Class/Common/GeneralProcs.h \
    Character/CharacterEncoding.h \
    Character/CharacterDecoder.h \
    Character/CharacterEncoder.h \
    Thread/SimulationThreadPool.h \
    Thread/SimulationRunner.h \
    Class/Common/GeneralBuffs.h \
    GUI/Models/BuffModel.h \
    Spells/ExternalBuff.h \
    Rotation/RotationFileReader.h \
    Rotation/Rotation.h \
    Rotation/Condition.h \
    Rotation/Conditions/ConditionSpell.h \
    Rotation/Conditions/ConditionBuff.h \
    Rotation/Conditions/ConditionResource.h \
    Rotation/Conditions/ConditionVariableBuiltin.h \
    CombatRoll/xorshift/xoroshiro128plus.h \
    Class/Warrior/Buffs/RecklessnessBuff.h \
    Test/Warrior/Spells/TestRecklessness.h \
    Class/Warrior/Spells/BattleStance.h \
    Class/Warrior/Spells/BerserkerStance.h \
    Class/Warrior/Buffs/BerserkerStanceBuff.h \
    Test/Warrior/Spells/TestBerserkerStance.h \
    Character/Race/Racials/BloodFury.h \
    Character/Race/Racials/BloodFuryBuff.h \
    Character/Race/Racials/Berserking.h \
    Character/Race/Racials/BerserkingBuff.h \
    GUI/Models/DebuffModel.h \
    GUI/Models/ItemTypeFilterModel.h \
    Equipment/Item/ItemNamespace.h \
    Class/Warlock/WarlockSpells.h \
    Class/Shaman/ShamanSpells.h \
    Class/Rogue/RogueSpells.h \
    Class/Priest/PriestSpells.h \
    Class/Paladin/PaladinSpells.h \
    Class/Mage/MageSpells.h \
    Class/Hunter/HunterSpells.h \
    Class/Druid/DruidSpells.h \
    Equipment/Item/ItemStatsEnum.h \
    GUI/Models/ActiveItemStatFilterModel.h \
    GUI/Models/AvailableItemStatFilterModel.h \
    Test/TestSpellDamage.h \
    Class/Warrior/Buffs/DefensiveStanceBuff.h \
    Test/Warrior/Spells/TestDeathWish.h \
    Test/TestCharacterStats.h \
    Class/Warrior/TalentTrees/Arms/SwordSpecializationTalent.h \
    Class/Warrior/Procs/SwordSpecialization.h \
    Test/Warrior/Procs/TestSwordSpecialization.h \
    Test/Warrior/Talents/TestTwoHandedWeaponSpecialization.h \
    Test/TestUtils.h \
    Class/Warrior/Spells/MortalStrike.h \
    Test/Warrior/Spells/TestMortalStrike.h \
    Class/Warrior/Spells/Slam.h \
    Event/Events/CastComplete.h \
    Test/Warrior/Spells/TestSlam.h \
    Talent/TalentRequirer.h \
    Spells/SpellCastingTime.h \
    Test/Warrior/Talents/TestFury.h \
    GUI/Models/RotationModel.h \
    Test/Warrior/Talents/TestArms.h \
    GUI/SimSettings.h \
    GUI/SimControl.h \
    Statistics/NumberCruncher.h \
    Class/Common/Enchants/Enchant.h \
    Class/Common/Enchants/EnchantStatic.h \
    Class/Common/Enchants/EnchantProc.h \
    Class/Common/Enchants/EnchantName.h \
    Class/Common/Buffs/ArmorPenetrationBuff.h \
    Class/Common/Procs/ArmorPenetrationProc.h \
    Class/Common/Spells/InstantSpellAttack.h \
    Class/Common/Procs/InstantSpellProc.h \
    Spells/MagicSchools.h \
    Test/General/Procs/TestFelstrikerProc.h \
    Class/Common/Procs/FelstrikerProc.h \
    Class/Common/Buffs/FelstrikerBuff.h \
    Spells/SharedBuff.h \
    Class/Common/Buffs/EssenceOfTheRed.h \
    Resource/Resource.h \
    Class/Common/Spells/PeriodicResourceGainSpell.h \
    Rulesets/Rulesets.h \
    Rulesets/RulesetControl.h \
    Faction/AvailableFactions.h \
    GUI/Models/Statistics/MeleeDamageAvoidanceBreakdownModel.h \
    GUI/Models/Statistics/MeleeDamageBreakdownModel.h \
    Rotation/RotationExecutor.h \
    GUI/Models/Statistics/BuffBreakdownModel.h \
    GUI/Models/Statistics/ProcBreakdownModel.h \
    GUI/Models/Statistics/ResourceBreakdownModel.h \
    Class/Common/Buffs/GenericStatBuff.h \
    Class/Common/Buffs/JomGabbar.h \
    Event/Events/PeriodicRefreshBuff.h \
    Class/Common/Buffs/FlatWeaponDamageBuff.h \
    Class/Common/Procs/GenericChargeConsumerProc.h \
    Class/Common/Spells/UseTrinket.h \
    Class/Common/Buffs/NoEffectBuff.h \
    Class/Warrior/Spells/Rend.h \
    Test/Warrior/Spells/TestRend.h \
    Character/EnabledBuffs.h \
    Character/EnabledProcs.h \
    Class/Warrior/Spells/AngerManagement.h \
    GUI/Models/Statistics/DebuffBreakdownModel.h \
    GUI/SimOption.h \
    GUI/Models/SimScaleModel.h \
    GUI/Models/Statistics/ScaleResultModel.h \
    Class/Rogue/TalentTrees/Assassination.h \
    Class/Rogue/TalentTrees/Combat.h \
    Class/Rogue/TalentTrees/Subtlety.h \
    Class/Rogue/Spells/Backstab.h \
    Resource/Rage.h \
    Resource/Energy.h \
    Resource/Mana.h \
    Test/Rogue/TestRogue.h \
    Test/Rogue/TestEnergy.h \
    Test/Rogue/TestSpellRogue.h \
    Test/Rogue/Spells/TestBackstab.h \
    Class/Rogue/Spells/Eviscerate.h \
    Test/Rogue/Spells/TestEviscerate.h \
    Class/Rogue/Spells/SliceAndDice.h \
    Class/Rogue/Buffs/SliceAndDiceBuff.h \
    Test/Rogue/Spells/TestSliceAndDice.h \
    Test/AttackTables/TestAttackTables.h \
    Test/TestTalentTree.h \
    Class/Rogue/Spells/AdrenalineRush.h \
    Class/Rogue/Buffs/AdrenalineRushBuff.h \
    Test/Rogue/Spells/TestAdrenalineRush.h \
    Class/Rogue/Spells/BladeFlurry.h \
    Class/Rogue/Buffs/BladeFlurryBuff.h \
    Test/Rogue/Spells/TestBladeFlurry.h \
    Class/Rogue/TalentTrees/Combat/Precision.h \
    Class/Rogue/TalentTrees/Combat/DaggerSpecialization.h \
    Class/Rogue/Spells/OffhandAttackRogue.h \
    Class/Rogue/TalentTrees/Combat/FistWeaponSpecialization.h \
    Class/Rogue/TalentTrees/Combat/MaceSpecialization.h \
    Class/Rogue/TalentTrees/Combat/WeaponExpertise.h \
    Class/Rogue/TalentTrees/Assassination/Malice.h \
    Class/Rogue/Spells/SinisterStrike.h \
    Test/Rogue/Spells/TestSinisterStrike.h \
    Class/Rogue/TalentTrees/Assassination/Murder.h \
    Class/Rogue/Procs/Ruthlessness.h \
    Class/Rogue/Procs/RelentlessStrikes.h \
    Test/Rogue/Procs/TestRelentlessStrikes.h \
    Test/Rogue/TestProcRogue.h \
    Class/Rogue/Procs/SealFate.h \
    Test/Rogue/Procs/TestSealFate.h \
    Class/Rogue/TalentTrees/Assassination/Vigor.h \
    Test/TestMechanics.h \
    Class/Rogue/Procs/InstantPoison.h \
    Class/Rogue/Buffs/InstantPoisonBuff.h \
    GUI/Models/EnchantModel.h \
    Character/CharacterEnchants.h \
    Class/Warrior/WarriorEnchants.h \
    Class/Rogue/RogueEnchants.h \
    Test/Rotation/TestConditionVariableBuiltin.h \
    Test/Rogue/Talents/TestAssassination.h \
    Test/Rogue/Talents/TestCombat.h \
    Test/Rogue/Talents/TestSubtlety.h \
    Class/Rogue/TalentTrees/Subtlety/SerratedBlades.h \
    Class/Rogue/TalentTrees/Subtlety/Deadliness.h \
    Class/Rogue/Spells/Hemorrhage.h \
    Test/Rogue/Spells/TestHemorrhage.h \
    Equipment/EquipmentDb/SetBonusFileReader.h \
    Equipment/SetBonusControl.h \
    Spells/SetBonusRequirer.h \
    Spells/ItemModificationRequirer.h \
    Character/CharacterLoader.h \
    Class/Hunter/TalentTrees/BeastMastery.h \
    Class/Hunter/TalentTrees/Marksmanship.h \
    Class/Hunter/TalentTrees/Survival.h \
    Test/Hunter/Talents/TestBeastMastery.h \
    Test/Hunter/Talents/TestMarksmanship.h \
    Test/Hunter/Talents/TestSurvival.h \
    Test/Hunter/TestHunter.h \
    Class/Hunter/HunterEnchants.h \
    Character/CharacterSpells.h \
    CombatRoll/AttackTables/MeleeWhiteHitTable.h \
    CombatRoll/AttackTables/RangedWhiteHitTable.h \
    Test/Hunter/TestSpellHunter.h \
    Class/Hunter/Spells/MultiShot.h \
    Test/Hunter/Spells/TestMultiShot.h \
    Class/Hunter/Spells/AutoShot.h \
    Test/Hunter/Spells/TestAutoShot.h \
    Class/Hunter/Spells/AimedShot.h \
    Test/Hunter/Spells/TestAimedShot.h \
    Utils/Check.h \
    Test/TestObject.h \
    Test/Rotation/TestRotationFileReader.h \
    Class/Common/AttackMode.h \
    Event/Events/RangedHit.h \
    Test/TestMana.h \
    Utils/CompareDouble.h \
    Talent/TalentStatIncrease.h \
    Test/Hunter/Talents/TestHunterTalentStatIncrease.h \
    Class/Hunter/Spells/HuntersMark.h \
    Class/Hunter/Buffs/HuntersMarkBuff.h \
    Class/Hunter/Spells/AspectOfTheHawk.h \
    Class/Hunter/Buffs/AspectOfTheHawkBuff.h \
    Class/Hunter/Buffs/ImprovedAspectOfTheHawkBuff.h \
    Class/Hunter/Procs/ImprovedAspectOfTheHawkProc.h \
    Class/Hunter/Spells/RapidFire.h \
    Class/Hunter/Buffs/RapidFireBuff.h \
    Class/Common/Buffs/DevilsaurEye.h \
    Class/Common/Pet/Pet.h \
    Event/Events/PetAction.h \
    Class/Common/Pet/Species/Cat.h \
    Class/Common/Pet/Spells/PetAutoAttack.h \
    Event/Events/PetMeleeHit.h \
    Class/Common/Pet/Spells/Claw.h \
    Resource/Focus.h \
    Resource/RegeneratingResource.h \
    Class/Common/Spells/ResourceTick.h \
    Class/Common/Procs/ManaDrainProc.h \
    Class/Hunter/Spells/BestialWrath.h \
    Class/Hunter/Buffs/BestialWrathBuff.h \
    Class/Hunter/Buffs/FrenzyBuff.h \
    Class/Hunter/Procs/FrenzyProc.h \
    Equipment/EquipmentDb/ProjectileFileReader.h \
    Equipment/Item/Projectile.h \
    Class/Common/Spells/ManaPotion.h \
    GUI/Models/SortDirection.h \
    Class/Hunter/Procs/ExposeWeaknessProc.h \
    Class/Hunter/Buffs/ExposeWeaknessBuff.h \
    Class/Hunter/HunterPet.h \
    GUI/Models/RotationConditionsModel.h \
    Statistics/StatisticsEngine.h \
    GUI/Models/Statistics/EngineBreakdownModel.h \
    Statistics/StatisticsRotationExecutor.h \
    GUI/Models/Statistics/RotationExecutorBreakdownModel.h \
    GUI/Models/Statistics/RotationExecutorListModel.h \
    Class/Paladin/TalentTrees/HolyPaladin.h \
    Class/Paladin/TalentTrees/ProtectionPaladin.h \
    Class/Paladin/TalentTrees/Retribution.h \
    Class/Paladin/PaladinEnchants.h \
    Test/Paladin/TestPaladin.h \
    Test/Paladin/Talents/TestHolyPaladin.h \
    Test/Paladin/Talents/TestProtectionPaladin.h \
    Test/Paladin/Talents/TestRetribution.h

INCLUDEPATH = $$PWD/Engine \
    $$PWD/Event \
    $$PWD/Event/Events \
    $$PWD/Queue \
    $$PWD/Character \
    $$PWD/Character/Race \
    $$PWD/Character/Race/Races \
    $$PWD/Character/Race/Racials \
    $$PWD/Character/Class \
    $$PWD/Class/Warrior \
    $$PWD/Class/Warrior/Spells \
    $$PWD/Class/Warrior/Buffs \
    $$PWD/Class/Warrior/Procs \
    $$PWD/Class/Warrior/TalentTrees \
    $$PWD/Class/Warrior/TalentTrees/Fury \
    $$PWD/Class/Warrior/TalentTrees/Arms \
    $$PWD/Class/Priest \
    $$PWD/Class/Rogue \
    $$PWD/Class/Rogue/Buffs \
    $$PWD/Class/Rogue/Procs \
    $$PWD/Class/Rogue/Spells \
    $$PWD/Class/Rogue/TalentTrees \
    $$PWD/Class/Rogue/TalentTrees/Assassination \
    $$PWD/Class/Rogue/TalentTrees/Combat \
    $$PWD/Class/Rogue/TalentTrees/Subtlety \
    $$PWD/Class/Mage \
    $$PWD/Class/Druid \
    $$PWD/Class/Hunter \
    $$PWD/Class/Hunter/Buffs \
    $$PWD/Class/Hunter/Procs \
    $$PWD/Class/Hunter/Spells \
    $$PWD/Class/Hunter/TalentTrees \
    $$PWD/Class/Warlock \
    $$PWD/Class/Shaman \
    $$PWD/Class/Shaman/Buffs \
    $$PWD/Class/Shaman/Spells \
    $$PWD/Class/Shaman/TalentTrees \
    $$PWD/Class/Paladin \
    $$PWD/Class/Paladin/Buffs \
    $$PWD/Class/Paladin/Procs \
    $$PWD/Class/Paladin/Spells \
    $$PWD/Class/Paladin/TalentTrees \
    $$PWD/Equipment \
    $$PWD/Equipment/Item \
    $$PWD/Equipment/EquipmentDb \
    $$PWD/CombatRoll \
    $$PWD/CombatRoll/AttackTables \
    $$PWD/CombatRoll/xorshift \
    $$PWD/Target \
    $$PWD/Spells \
    $$PWD/Statistics \
    $$PWD/Statistics/Charts \
    $$PWD/Mechanics \
    $$PWD/Test \
    $$PWD/Test/AttackTables \
    $$PWD/Test/General/Procs \
    $$PWD/Test/Warrior \
    $$PWD/Test/Warrior/Spells \
    $$PWD/Test/Warrior/Buffs \
    $$PWD/Test/Warrior/Procs \
    $$PWD/Test/Warrior/Talents \
    $$PWD/Test/Rogue \
    $$PWD/Test/Rogue/Procs \
    $$PWD/Test/Rogue/Spells \
    $$PWD/Test/Rogue/Talents \
    $$PWD/Test/Hunter \
    $$PWD/Test/Hunter/Spells \
    $$PWD/Test/Hunter/Talents \
    $$PWD/Test/Paladin \
    $$PWD/Test/Paladin/Procs \
    $$PWD/Test/Paladin/Spells \
    $$PWD/Test/Paladin/Talents \
    $$PWD/Test/Shaman \
    $$PWD/Test/Shaman/Spells \
    $$PWD/Test/Shaman/Talents \
    $$PWD/Test/Rotation \
    $$PWD/Class/Common \
    $$PWD/Class/Common/Enchants \
    $$PWD/Class/Common/Buffs \
    $$PWD/Class/Common/Spells \
    $$PWD/Class/Common/Procs \
    $$PWD/Class/Common/Pet \
    $$PWD/Class/Common/Pet/Species \
    $$PWD/Class/Common/Pet/Spells \
    $$PWD/GUI \
    $$PWD/GUI/Models \
    $$PWD/GUI/Models/Statistics \
    $$PWD/Faction \
    $$PWD/Thread \
    $$PWD/Rotation \
    $$PWD/Rotation/Conditions \
    $$PWD/Rulesets \
    $$PWD/Phases \
    $$PWD/Resource \
    $$PWD/Talent

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


