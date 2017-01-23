//inisalisasi var
//­1 undefined, 4 bawah, 1 kiri, 2 atas, 3 kanan
//global.panah = ­1
//global.gerak = ­1

//cek apakah ada wall_obj di atas objek ini
if ((global.panah==2) && !place_meeting(x, y­3, wall_obj)) {
//hadap dan gerak ke atas
sprite_index = pacman_up_spr;
global.gerak = 2;
}
//kanan?
else if ((global.panah==3) && !place_meeting(x+3, y, wall_obj)) {
//hadap dan gerak ke kanan
sprite_index = pacman_right_spr;
global.gerak = 3;
}
//kiri
else if ((global.panah==1) && !place_meeting(x­3, y, wall_obj)) {
//hadap dan gerak ke kiri
sprite_index = pacman_left_spr;
global.gerak = 1;
}
//bawah
else if ((global.panah==4) && !place_meeting(x, y+3, wall_obj)) {
//hadap dan gerak ke bawah
sprite_index = pacman_down_spr;
global.gerak = 4;
}
//lakukan gerakan
if (global.gerak == 2) {
    y = y ­ 4; //atas
} else if (global.gerak==3) {
    x = x + 4; //kanan
} else if (global.gerak==1) {
    x = x ­ 4; //kiri
} else if (global.gerak==4) {
    y = y + 4; //bawah
}
