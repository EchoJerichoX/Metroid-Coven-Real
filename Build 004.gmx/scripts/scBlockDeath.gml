switch (object_index)
{
    // Make sure we don't run this script if we are not a 16x or 8x block.
    case oIceLR:
    case oIceUD:
        exit; break;
}
sound_play(choose(Crumble1,Crumble2,Crumble3,Crumble4,Crumble5,Crumble6))
with (instance_create(x,y,oDestroyAnim))
{
    if (other.object_index = oBlock16) sprite_index = sprBlockBreak16;
    if (other.object_index = oBlock8) sprite_index = sprBlockBreak8;
    image_speed = .25;
    if (other.myid = Blocks.bReform) r = 1;
}
var ii = tile_layer_find(1,x+sprite_width/2,y+sprite_height/2);
if (ii) tile_set_visible(ii,false);

mp_grid_clear_cell(eId.aigrid,x/16,y/16);
