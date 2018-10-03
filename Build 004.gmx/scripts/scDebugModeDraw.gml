if (object_index = eId)
{
    if (!debugmode) exit;
    draw_set_font(font1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_bottom);
    draw_set_color(c_white);
    
    dxo = view_xview[0]+130;
    dyo = view_yview[0]+view_hview[0];
    
    if (drawmpgrid)
    {
        draw_set_alpha(0.2);
        mp_grid_draw(eId.aigrid);
        for (var i = 0; i < room_width; i += 16;)
            { draw_line(i,0,i,room_width); }
        for (var i = 0; i < room_height; i += 16;)
            { draw_line(i,0,i,room_height); }
        draw_set_alpha(1);
    }
    
    if (room = TransitionRoom)
    {
        draw_text(5,20,"tx:"); draw_text(40,20,tx);
        draw_text(5,40,"ty:"); draw_text(40,40,ty);
        draw_text(5,60,"vox:"); draw_text(40,60,vox);
        draw_text(5,80,"voy:"); draw_text(40,80,voy);
    }
    //draw_text(dxo,dyo-2,string_insert(string_format(instance_number(oParticle),3,0), "Parts: ",8));
    //draw_text(dxo,dyo-50,string_insert(string_format(oViewController.x,3,0), "VC X: ",7));
    //draw_text(dxo,dyo-34,string_insert(string_format(oViewController.y,3,3), "VC Y: ",7));
    //draw_text(dxo,dyo-18,string_insert(string_format(oViewController.xx,3,0), "VC XX: ",8));
    //draw_text(dxo,dyo-2,string_insert(string_format(oViewController.yy,3,0), "VC YY ",8));
    //draw_text(dxo,dyo-98,string_insert(string_format(paused,3,3), "Paused: ",9));
    //draw_text(dxo,dyo-82,string_insert(string_format(fadeStage,3,0), "Fade Stage: ",13));
    //draw_text(dxo,dyo-66,string_insert(string_format(alpha1,3,2), "Alpha 1: ",10));
    //draw_text(dxo,dyo-50,string_insert(string_format(alpha2,3,2), "Alpha 2: ",10));
    //draw_text(dxo,dyo-34,string_insert(string_format(gonextroom,3,0), "Go Next Room: ",15));

}
