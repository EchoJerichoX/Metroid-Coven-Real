// Encrypt(str,pass)
// argument0     | String
// argument1     | Password
// Grunge Games 2010
var _str,_pass,_new,_char;
_str=string(argument0);
_pass=string(argument1);
_new="";
_char="";

for (i=1; i<string_length(_str)+1; i+=1)
    {
     _char=string_char_at(_str,i);
     _char=chr(ord(_char)+string_length(_pass))
     _new+=string(_char);
    }
//_new+="<(\"+string(_pass)+"/)>";
//_new+=_rand;

return (_new);
