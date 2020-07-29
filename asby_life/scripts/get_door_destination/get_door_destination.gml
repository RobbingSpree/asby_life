var entrance = argument0;

var _exit = noone;

switch entrance.index
{
	case 0: _exit = 1; break;
	case 1: _exit = 0; break;
	default: _exit = entrance.index;
}

var exit_door = noone;

with door_parent
{
	if index == _exit
		exit_door = self;
}

return exit_door;