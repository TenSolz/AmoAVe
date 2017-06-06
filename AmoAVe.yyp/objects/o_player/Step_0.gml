//Get Input
key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(ord("A"));
key_jump = -keyboard_check_pressed(ord("W"));

//Inputs reacting
p_movement = key_left + key_right;
hspeed_ = p_movement * movespeed_;
if (vspeed_ < 1) {vspeed_ += gravity_;}

if place_meeting(x,y+1,o_wall){
	vspeed_ = key_jump*jumpspeed_;
	}
x += hspeed_;
y += vspeed_;
/*/Collision
if place_meeting(x+hspeed_,y,o_wall){
	while !place_meeting(x+sign(hspeed_),y,o_wall){
		x += sign(hspeed_);
		}
	hspeed_ = 0;
	}
x += hspeed_;
if place_meeting(x,y+vspeed_,o_wall){
	while !place_meeting(x,y+sign(vspeed_),o_wall){
		y += sign(vspeed_);
		}
	vspeed_ = 0;
	}
y +=vspeed_; */