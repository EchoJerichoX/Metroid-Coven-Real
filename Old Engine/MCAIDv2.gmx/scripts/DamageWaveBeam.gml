switch (other.sprite_index)
{
   case sprWave:
      DamageWaveBeamReg(); break;
   case sprWaveCh:
   case sprWaveChC:
      DamageWaveBeamCh(); break;
}
