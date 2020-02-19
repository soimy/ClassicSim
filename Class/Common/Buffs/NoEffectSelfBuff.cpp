#include "NoEffectSelfBuff.h"

#include "Proc.h"

NoEffectSelfBuff::NoEffectSelfBuff(
    Character* pchar, const int duration, const QString& name, const QString& icon, const bool hidden, const int charges) :
    SelfBuff(pchar, name, icon, duration, charges) {
    this->hidden = hidden;
}

void NoEffectSelfBuff::link_buff_expiration(Buff* buff_to_cancel) {
    this->buff_to_cancel = buff_to_cancel;
}

void NoEffectSelfBuff::link_proc_application(Proc* proc_to_apply) {
    this->proc_to_apply = proc_to_apply;
}

void NoEffectSelfBuff::link_proc_expiration(Proc* proc_to_cancel) {
    this->proc_to_cancel = proc_to_cancel;
}

void NoEffectSelfBuff::buff_effect_when_applied() {
    if (proc_to_apply)
        proc_to_apply->enable_proc();
}

void NoEffectSelfBuff::buff_effect_when_removed() {
    if (buff_to_cancel)
        buff_to_cancel->cancel_buff();

    if (proc_to_cancel)
        proc_to_cancel->disable_proc();
}
