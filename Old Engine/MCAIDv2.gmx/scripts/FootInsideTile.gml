ii = tile_layer_find(2000,x,y)
if x-5< tile_get_left(ii) {return false}
if y-5< tile_get_top(ii) {return false}
if x+5> tile_get_left(ii)+tile_get_height(ii) {return false}
if y+5> tile_get_top(ii)+tile_get_height(ii) {return false}
return true;
