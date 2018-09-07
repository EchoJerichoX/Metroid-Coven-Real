// argument0 = Type of object the block was hit by.
// 1 = oProjectile.
// 2 = oExplosion.
// 3 = oPowerBombExplosion.

// Exception list (blocks should only be
//   breakable by the player for now)...
switch (argument0)
{
    case 1:
        // Insert "if other.myid = Weapons.wEnemyBeam" or something here, with "exit;".
        break;
    case 2:
        // Insert "if other.myid = Weapons.wEnemySplash" or something here, with "exit;".
        break;
}
switch (object_index)
{
    case oBlock16:
    case oBlock8:
        switch (myid)
        {
            case Blocks.bBasic:
            case Blocks.bReform:
                instance_destroy();
                break;
            case Blocks.bBomb:
                if (argument0 = 2)
                    { if (other.sprite_index = sprBallBombExplosion) instance_destroy(); }
                if (argument0 = 3) instance_destroy();
                break;
            case Blocks.bPowerBomb:
                if (argument0 = 3) instance_destroy();
                break;
            case Blocks.bMissile:
                if (argument0 = 1)
                    { if (other.myid = Weapons.wMissileLauncher) or (other.myid = Weapons.wSuperMissile) instance_destroy(); }
                if (argument0 = 2)
                    { if (other.sprite_index = sprMissileExplosion) or (other.sprite_index = sprSuperMissileExplosion) instance_destroy(); }
                break;
            case Blocks.bSuperMissile:
                if (argument0 = 1)
                    { if (other.myid = Weapons.wSuperMissile) instance_destroy(); }
                if (argument0 = 2)
                    { if (other.sprite_index = sprSuperMissileExplosion) instance_destroy(); }
                break;
            case Blocks.bSpeedBooster:
                // Incomplete.
                break;
        }
        break;
    case oIceLR:
    case oIceUD:
        if (other.myid = Weapons.wMissileLauncher) or (other.myid = Weapons.wSuperMissile)
        {
            o1 = sprite_width; o2 = sprite_height;
            if (sprite_index = sprIceLR) image_angle += 90;
            so = 15; // Distance in from the edge of the sprite we will create a doodad.
            repeat(25+round(random(10))) with (instance_create(x-(o1/2)+so+random(o1)-so,y-(o2/2)+so+random(o2)-so,oDoodad))
            {
                sprite_index = sprIcePart;
                depth = other.depth+1;
                image_angle = random(360);
                image_xscale = random_range(.6,1);
                image_yscale = random_range(.6,1);
                alarm[0] = 300-max(instance_number(oDoodad),1);
                image_single = round(random(11));
                speed = 1+random(1);
                friction = .05;
                direction = random(360);
                image_alpha = other.image_alpha-.2;
            }
            sound_play(IceShatter);
            with (instance_create(x,y,oExplosion))
            {
                sprite_index = sprIceShatter;
                depth = other.depth;
                image_angle = other.image_angle;
                image_speed = .5;
                image_alpha = other.image_alpha+.2;
            }
            instance_destroy();
        }
        break;
        
}
