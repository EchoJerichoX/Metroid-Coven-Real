var str,strmax,txt,p,i;
str[0]="";
strmax=0;
p="MetroidCovenLOL5";

txt=file_text_open_read(argument0);
while (!file_text_eof(txt)) {
    str[strmax]=file_text_read_string(txt);
    strmax+=1;
    file_text_readln(txt);
}
file_text_close(txt);
txt=file_text_open_write(argument0);
for (i=0; i<strmax; i+=1) {
    file_text_write_string(txt,Decrypt(str[i],p));
    file_text_writeln(txt);
}
file_text_close(txt);
