if (!instance_exists(objPlayer)) exit;
if (global.cursor = 2) then
{
   if (!variable_global_exists("highest")) global.highest=id;
   else if (id.depth<global.highest.depth)  global.highest=id;
   else if (id>global.highest) global.highest=id;
   alarm[9] = 1;
   sound_play(Scan);
}
