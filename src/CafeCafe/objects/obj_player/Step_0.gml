if(instance_exists(obj_textbox)) exit;

input_left		= keyboard_check(vk_left);
input_right		= keyboard_check(vk_right);
input_up		= keyboard_check(vk_up);
input_down		= keyboard_check(vk_down);
input_run		= keyboard_check(vk_shift);
input_walk		= keyboard_check(vk_control);

//---------RESET MOVEMENT VARIABLES
moveX = 0; 
moveY = 0;

//---------GET INTENDED MOVEMENT
var right = (input_right - input_left);
var left = (input_down - input_up);
if(right != 0 or left != 0){
	var dir = point_direction(x,y, x+right, y+left);
	moveX = lengthdir_x(spd, dir);
	moveY = lengthdir_y(spd, dir);
}

// Check horizontal collisions
if (place_meeting(x + moveX, y, obj_wall)) {
    // Resolve the collision horizontally by finding the nearest non-colliding x position
    while (!place_meeting(x + sign(moveX), y, obj_wall)) {
        x += sign(moveX);
    }
    moveX = 0;
}

// Move horizontally
x += moveX;

// Check vertical collisions
if (place_meeting(x, y + moveY, obj_wall)) {
    // Resolve the collision vertically by finding the nearest non-colliding y position
    while (!place_meeting(x, y + sign(moveY), obj_wall)) {
        y += sign(moveY);
    }
    moveY = 0;
}

// Move vertically
y += moveY;