switch (other.sprite_index)
{
    default: show_message("No sprite set for hazard.
                            #No Damage to assign!
                            #See collision event with oActor in oPlayer object."); exit; break; // Error-catcher.
    case sprBarriaSpikes: scPlayerDamage(9,11,1); break;
}
