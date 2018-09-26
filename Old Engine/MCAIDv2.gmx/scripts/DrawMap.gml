//Draws the HUD map. First the background, then each block. 
if (global.curroom = 9999999) exit;
var xx,yy,i;
xx=view_wview[0]-93;
yy=view_hview[0]-468;
xxx=xx;
yyy=yy;
draw_sprite(sprMap,-1,view_xview[0]+xx,view_yview[0]+yy)
//i=1;
for (i=1; i<mmax; i+=1) {
//while (yyy<yy+32) {
    if (m[i]!="0") then DrawMapBlock(view_xview[0]+xxx,view_yview[0]+yyy,string_char_at(m[i],1),string_char_at(m[i],2),string_char_at(m[i],3),string_char_at(m[i],4),string_char_at(m[i],5),string_char_at(m[i],6),dm[i])
    //if (i==13) then show_message(string(xxx)+" : "+string(yyy));
    xxx+=8;
    //i+=1;
    if (xxx>xx+39) {
        xxx=xx;
        yyy+=8;
    }
}
// Reset the xx and yy variables to 
xxx=xx+16;
yyy=yy+16;
draw_set_alpha(malpha)
draw_set_color(c_white)
draw_rectangle(view_xview[0]+xxx,view_yview[0]+yyy,view_xview[0]+xxx+8,view_yview[0]+yyy+8,0)
