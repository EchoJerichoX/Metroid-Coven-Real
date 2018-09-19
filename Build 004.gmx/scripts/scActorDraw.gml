draw_self();
switch (myid)
{
    case Enemies.eZoomer:
        if (damaged > 0) draw_sprite_ext(sprZoomerHit,image_index,x,y,1,1,image_angle,c_white,damaged);
        if (eId.debugmode)
        {
            draw_set_color(c_blue);
            draw_text(x+7,y-10,state);
            if (nearestden != noone)
            {
                draw_text(x+7,y-23,nearestden.x);
                draw_text(x+7,y-36,nearestden.y);
            }
            //draw_text(x+7,y-23,path_position);
            //draw_text(x+7,y-10,direction);
            //draw_text(x+7,y-23,destdir);
            //draw_text(x+7,y-23,statechange);
            //draw_text(x+7,y-36,staterate);
            //draw_text(x+7,y-40,damaged);
        }
        break;
}
