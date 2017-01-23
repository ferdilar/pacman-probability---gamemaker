/*
Ferdila Rahmi 2015
*/

var probab = argument0;
var rand = random_range(0,1);
if(rand>probab){//ngasal
    if(!place_meeting(x+hspeed,y+vspeed,objWall)){//terus
        self.direction=direction;
    }else{//pilih random direction
        self.direction=choose(0,90,180,270);
    }
    exit;
}else{//kejar
junction=0;
if(vspeed==0){//horizontal
    if(!place_meeting(x+hspeed,y,objWall)){
        junction=junction+3;
    }
    if(!place_meeting(x,y+4,objWall)){
        junction=junction+1;
    }
    if(!place_meeting(x,y-4,objWall)){
        junction=junction+5;
    }
    //cek junction
    //1 kemungkinan
    if(junction==3){
        exit;
    }else if(junction==1){
        self.direction=270;
        exit;
    }else if(junction==5){
        self.direction=90;
        exit;
    }
    //2 kemungkinan
    else if(junction==4){
        selisihX=abs(objPacman.x-x);
        selisihY=abs(objPacman.y-y);
        //jalur tersedia terus/bawah
        if (objPacman.y>=y && selisihX>selisihY){//posisi pac
            exit;//terus
        }else if(objPacman.y>=y && selisihX<selisihY){
            self.direction = 270;//kejar ke bawah
        }else if(objPacman.y<=y){
            exit;//terus
        }
        else{//posisi pac bawah
            self.direction = 270;//kejar ke bawah
        }
        exit;
    }else if(junction==8){
        selisihX=abs(objPacman.x-x);
        selisihY=abs(objPacman.y-y);
        //jalur tersedia terus/atas
        if (objPacman.y<=y && selisihX>selisihY){//posisi pac
            exit;//terus
        }else if(objPacman.y<=y && selisihX<selisihY){
            self.direction = 90;//kejar ke atas
        }else if(objPacman.y>=y){
            exit;//terus
        }
        else{//posisi pac atas
            self.direction = 90;//kejar ke atas
        }
        exit;
    }else if(junction==6){
        if (objPacman.y>y) {
            self.direction = 270;
        }else{
            self.direction = 90;
        }
        exit;
    }
    //3 kemungkinan
    else if(junction==9){
        selisihX=abs(objPacman.x-x);
        selisihY=abs(objPacman.y-y);
        //jalur tersedia terus/bawah/atas
        if (selisihX<=selisihY){//lebih dekat gerak vertikal
            if(objPacman.y<y){
                self.direction = 90;//kejar ke atas
            }else{
                self.direction = 270;//kejar ke bawah
            }
        }else{
            exit;//terus
        }
        exit;
    }else if(junction==0){
        self.direction=direction+180;
        exit;
    }
}else{//vertikal
       if(!place_meeting(x,y+vspeed,objWall)){
        junction=junction+3;
    }
    if(!place_meeting(x+4,y,objWall)){
        junction=junction+1;
    }
    if(!place_meeting(x-4,y,objWall)){
        junction=junction+5;
    }
    //cek junction
    //1 kemungkinan
    if(junction==3){
        exit;
    }else if(junction==1){
        self.direction=0;
        exit;
    }else if(junction==5){
        self.direction=180;
        exit;
    }
    //2 kemungkinan
    else if(junction==4){
        selisihX=abs(objPacman.x-x);
        selisihY=abs(objPacman.y-y);
        //jalur tersedia kanan/terus
        if (objPacman.x>=x && selisihX<selisihY){//posisi pac
            exit;//terus
        }else if(objPacman.x>=x && selisihX>selisihY){
            self.direction = 0;//kejar ke kanan
        }else if(objPacman.x<=x){
            exit;//terus
        }
        else{//posisi pac kanan
            self.direction = 0;//kejar ke kanan
        }
        exit;
    }else if(junction==8){
        selisihX=abs(objPacman.x-x);
        selisihY=abs(objPacman.y-y);
        //jalur tersedia kiri/terus
        if (objPacman.x<=x && selisihX<selisihY){//posisi pac
            exit;//terus
        }else if(objPacman.x<=x && selisihX>selisihY){
            self.direction = 180;//kejar ke kiri
        }else if(objPacman.x>=x){
            exit;//terus
        }
        else{//posisi pac kiri
            self.direction = 180;//kejar ke kiri
        }
        exit;
    }else if(junction==6){
        if (objPacman.x>x) {
            self.direction = 0;
        }else{
            self.direction = 180;
        }
        exit;
    }
    //3 kemungkinan
    else if(junction==9){
        selisihX=abs(objPacman.x-x);
        selisihY=abs(objPacman.y-y);
        //jalur tersedia terus/kiri/kanan
        if (selisihY<=selisihX){//lebih dekat gerak horizontal
            if(objPacman.x<x){
                self.direction = 180;//kejar ke kiri
            }else{
                self.direction = 0;//kejar ke kanan
            }
        }else{
            exit;//terus
        }
        exit;
    }
    //0 kemungkinan
    else if(junction==0){
        self.direction=direction+180;
        exit;
    }
}
}
