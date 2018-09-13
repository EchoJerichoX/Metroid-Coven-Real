draw_self();
switch (myid)
{
    case Enemies.eZoomer:
        if (damaged > 0) draw_sprite_ext(sprZoomerHit,image_index,x,y,1,1,image_angle,c_white,damaged);
        if (eId.debugmode)
        {
           //draw_text(x+7,y-10,state);
           //draw_text(x+7,y-23,path_position);
           draw_text(x+7,y-10,direction);
           draw_text(x+7,y-23,destdir);
           //draw_text(x+7,y-23,statechange);
           //draw_text(x+7,y-36,staterate);
           //draw_text(x+7,y-40,damaged);
        }
        break;
}
