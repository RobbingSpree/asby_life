/// @description Insert description here
// You can write your code in this editor
var frame = ani mod 4;
var direct= 0;
if facing > 0
	direct = facing;
var scale = 2;
draw_sprite_part_ext(char_demo_spr,0,0+frame*32,48+direct*sprite_height,32,48,x,y,scale,scale,c_white,1);

draw_text(20,20,frame)