
var left = keyboard_check(vk_left) || keyboard_check(ord("A")); //move left
var right = keyboard_check(vk_right) || keyboard_check(ord("D")); //move right
var up = keyboard_check(vk_up) || keyboard_check(ord("W")); //go into doors
var down = keyboard_check(vk_down) || keyboard_check(ord("S")); //bring up menu
var atten = keyboard_check(ord("Z")) || keyboard_check(ord("Q")); //get nearby people's attention
var ques = keyboard_check(ord("X")) || keyboard_check(ord("E")); //ask questions

//menu


//movement
var dir = right - left;
walking=false;
if dir != 0
{
	walking = true;
	facing = dir;
	ani_spd--
	if ani_spd == 0
	{
		ani++
		ani_spd = ani_spd_max;
	}
} else {
	ani = 0;
	ani_spd = ani_spd_max;
	walking = false;
}
x+= dir*spd;