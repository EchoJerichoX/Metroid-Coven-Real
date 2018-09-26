var c, i;
c = file_text_open_write("controls.dat");
i = 0;
repeat (global.KEYMAX) {
    file_text_write_real(c, global.KEY[i]);
    file_text_writeln(c);
    i += 1;
}
i = 0;
repeat (global.KEYMAX) {
    file_text_write_string(c, global.KEYNAME[i]);
    file_text_writeln(c);
    i += 1;
}
i = 0;
repeat (global.KEYMAX) {
    file_text_write_string(c, global.KEYNAME2[i]);
    file_text_writeln(c);
    i += 1;
}
file_text_close(c);

/*
//FileDecrypt("controls.dat");
var c,i;
c=file_text_open_write("controls.dat");
//file_text_write_real(c,global.KEYS);
for (i=0; i<global.KEYMAX; i+=1) {
    file_text_writeln(c);
    file_text_write_real(c,global.KEY[i]);
}
for (i=0; i<global.KEYMAX; i+=1) {
    file_text_writeln(c);
    file_text_write_string(c,global.KEYNAME[i]);
}
for (i=0; i<global.KEYMAX; i+=1) {
    file_text_writeln(c);
    file_text_write_string(c,global.KEYNAME2[i]);
}
file_text_close(c);
//FileEncrypt("controls.dat");
