switch (other.sprite_index)
{
   case sprIceFreezer:
      exit; break;
   case sprIce:
      DamageIceBeamReg(); break;
   case sprIceCh:
      DamageIceBeamCh(); break;
}
