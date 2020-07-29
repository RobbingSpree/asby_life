//input
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
if dir != 0 && !room_changing
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

//door check
door = instance_nearest(x,y,door_parent)
if up && !room_changing
{
	if distance_to_object(door) < 10
	{
		room_changing = true; //start room change
		var exit_ = get_door_destination(door);
	}
}

if room_changing
{
	if instance_exists(exit_)
	{
		x=exit_.x;
		room_changing = false;
	}
}
