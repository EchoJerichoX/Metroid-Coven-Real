var c, i;
c = file_text_open_read("controls.dat");
i = 0;
repeat (global.KEYMAX) {
    global.KEY[i] = file_text_read_real(c);
    file_text_readln(c);
}
i = 0;
repeat (global.KEYMAX) {
    global.KEYNAME[i] = file_text_read_string(c);
    file_text_readln(c);
    i += 1;
}
i = 0;
repeat (global.KEYMAX) {
    global.KEYNAME2[i] = file_text_read_string(c);
    file_text_readln(c);
    i += 1;
}
file_text_close(c);

/*
//FileDecrypt("controls.dat");
var c,i;
c=file_text_open_read("controls.dat");
//global.KEYS=file_text_read_real(c);
for (i=0; i<global.KEYMAX; i+=1) {
    global.KEY[i]=file_text_read_real(c);
    file_text_readln(c);
}
for (i=0; i<global.KEYMAX; i+=1) {
    global.KEYNAME[i]=file_text_read_string(c);
    file_text_readln(c);
}
for (i=0; i<global.KEYMAX; i+=1) {
    global.KEYNAME2[i]=file_text_read_string(c);
    file_text_readln(c);
}
file_text_close(c);
//FileEncrypt("controls.dat");
