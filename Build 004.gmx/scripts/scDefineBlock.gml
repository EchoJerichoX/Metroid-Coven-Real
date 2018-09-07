myid = argument0;
depth = 10;
switch (object_index)
{
    case oBlock16:
        switch (myid)
        {
            case Blocks.bBasic: sprite_index = sprBasicBlock16; break;
            case Blocks.bReform: sprite_index = sprReformBlock16; break;
            case Blocks.bBomb: sprite_index = sprBombBlock16; break;
            case Blocks.bPowerBomb: sprite_index = sprPowerBombBlock16; break;
            case Blocks.bMissile: sprite_index = sprMissileBlock16; break;
            case Blocks.bSuperMissile: sprite_index = sprSuperMissileBlock16; break;
            case Blocks.bSpeedBooster: sprite_index = sprSpeedBoosterBlock16; break;
        }
        break;
    case oBlock8:
        switch (myid)
        {
            case Blocks.bBasic: sprite_index = sprBasicBlock8; break;
            case Blocks.bReform: sprite_index = sprReformBlock8; break;
            case Blocks.bBomb: sprite_index = sprBombBlock8; break;
            case Blocks.bPowerBomb: sprite_index = sprPowerBombBlock8; break;
            case Blocks.bMissile: sprite_index = sprMissileBlock8; break;
            case Blocks.bSuperMissile: sprite_index = sprSuperMissileBlock8; break;
            case Blocks.bSpeedBooster: sprite_index = sprSpeedBoosterBlock8; break;
        }
        break;
}
