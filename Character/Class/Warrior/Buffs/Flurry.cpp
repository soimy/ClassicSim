
#include "Flurry.h"
#include "Warrior.h"

void Flurry::buff_effect_when_applied() {
    // TODO: Remove assumption player has 5/5 Flurry, or has Flurry at all
    pchar->increase_ias(0.3);
}

void Flurry::buff_effect_when_removed() {
    // TODO: Remove assumption player has 5/5 Flurry, or has Flurry at all
    pchar->decrease_ias(0.3);
}
