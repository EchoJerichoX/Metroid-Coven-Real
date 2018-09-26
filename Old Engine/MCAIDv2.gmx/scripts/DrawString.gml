//////////////////////////////////
// Argument 0 = string.         //
// Argument 1 = x.              //
// Argument 2 = y.              //
// Argument 3 = alignment.      //
//    0 = left. 1 = right.      //
//                              //
// Variables a, b, and c are    //
//    the character places;     //
//    1, 2, and 3 respectively. //
// Ind variables are to see if  //
//    a character is a period,  //
//    zero, or X.               //
//////////////////////////////////

var a,b,c,d,aind,bind,cind,dind;
a = string_char_at(argument0,1)
if (string_length(argument0) >= 2) b = string_char_at(argument0,2);
if (string_length(argument0) >= 3) c = string_char_at(argument0,3);
if (string_length(argument0) >= 4) d = string_char_at(argument0,4);

if (a = "0") aind = 9;
if (a = "X") aind = 10;
if (a = ".") aind = 11;
if (a != "0") and (a != "X") and (a != ".") aind = real(a)-1;

if (string_length(argument0) >= 2)
{
    if (b = "0") bind = 9;
    if (b = "X") bind = 10;
    if (b = ".") bind = 11;
    if (b != "0") and (b != "X") and (b != ".") bind = real(b)-1;
}

if (string_length(argument0) >= 3)
{
    if (c = "0") cind = 9;
    if (c = "X") cind = 10;
    if (c = ".") cind = 11;
    if (c != "0") and (c != "X") and (c != ".") cind = real(c)-1;
}

if (string_length(argument0) >= 4)
{
    if (d = "0") dind = 9;
    if (d = "X") dind = 10;
    if (d = ".") dind = 11;
    if (d != "0") and (d != "X") and (d != ".") dind = real(d)-1;
}

if (argument3 = 0)
{
    // Separate case for when there is a decimal in the health variable.
    if (argument0 = global.healthstr) 
    {
        if (string_length(argument0) <= 2)
        {
            draw_sprite(HUDFontNumbers,aind,argument1,argument2);
            if (string_length(argument0) >= 2) draw_sprite(HUDFontNumbers,bind,argument1+4,argument2);
        }
        if (string_length(argument0) = 3)
        {
            if (bind = 11)
            {
                draw_sprite(HUDFontNumbers,aind,argument1,argument2);
                if (string_length(argument0) >= 2) draw_sprite(HUDFontNumbers,bind,argument1+2,argument2);
                if (string_length(argument0) >= 3) draw_sprite(HUDFontNumbers,cind,argument1+5,argument2);
            }
            if (bind != 11)
            {
                draw_sprite(HUDFontNumbers,aind,argument1,argument2);
                if (string_length(argument0) >= 2) draw_sprite(HUDFontNumbers,bind,argument1+4,argument2);
                if (string_length(argument0) >= 3) draw_sprite(HUDFontNumbers,cind,argument1+8,argument2);
            }
        }
        if (string_length(argument0) >= 4)
        {
            if (cind = 11)
            {
                draw_sprite(HUDFontNumbers,aind,argument1,argument2);
                if (string_length(argument0) >= 2) draw_sprite(HUDFontNumbers,bind,argument1+4,argument2);
                if (string_length(argument0) >= 3) draw_sprite(HUDFontNumbers,cind,argument1+7,argument2);
                if (string_length(argument0) >= 4) draw_sprite(HUDFontNumbers,dind,argument1+10,argument2);
            }
            if (cind != 11)
            {
                draw_sprite(HUDFontNumbers,aind,argument1,argument2);
                if (string_length(argument0) >= 2) draw_sprite(HUDFontNumbers,bind,argument1+4,argument2);
                if (string_length(argument0) >= 3) draw_sprite(HUDFontNumbers,cind,argument1+8,argument2);
                if (string_length(argument0) >= 4) draw_sprite(HUDFontNumbers,dind,argument1+12,argument2);
            }
        }
    }
    // End.
    else
    {
        draw_sprite(HUDFontNumbers,aind,argument1,argument2);
        if (string_length(argument0) >= 2) draw_sprite(HUDFontNumbers,bind,argument1+4,argument2);
        if (string_length(argument0) >= 3) draw_sprite(HUDFontNumbers,cind,argument1+8,argument2);
        if (string_length(argument0) >= 4) draw_sprite(HUDFontNumbers,dind,argument1+12,argument2);
    }
}
if (argument3 = 1)
{
    switch (string_length(argument0))
    {
        case 1:
            draw_sprite(HUDFontNumbers,aind,argument1-3,argument2);
            break;
        case 2:
            draw_sprite(HUDFontNumbers,aind,argument1-7,argument2);
            draw_sprite(HUDFontNumbers,bind,argument1-3,argument2);
            break;
        case 3:
            draw_sprite(HUDFontNumbers,aind,argument1-11,argument2);
            draw_sprite(HUDFontNumbers,bind,argument1-7,argument2);
            draw_sprite(HUDFontNumbers,cind,argument1-3,argument2);
            break;
        case 4:
            draw_sprite(HUDFontNumbers,aind,argument1-15,argument2);
            draw_sprite(HUDFontNumbers,bind,argument1-11,argument2);
            draw_sprite(HUDFontNumbers,cind,argument1-7,argument2);
            draw_sprite(HUDFontNumbers,dind,argument1-3,argument2);
    }
    /*
    Old right alignment stuff. (argument3 = 1).
      
    if (string_length(argument0) >= 2) draw_sprite(HUDFontNumbers,bind,argument1-7,argument2);
    if (string_length(argument0) >= 3) draw_sprite(HUDFontNumbers,cind,argument1-11,argument2);
    if (string_length(argument0) >= 4) draw_sprite(HUDFontNumbers,dind,argument1-15,argument2);
    */
}
