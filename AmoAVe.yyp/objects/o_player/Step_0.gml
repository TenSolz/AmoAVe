//Movement
if keyboard_check(ord("D")){
	hspeed_ = 6;
	} 

else if keyboard_check(ord("A")){  
	hspeed_ = -6;
	}
else{
	hspeed_ = 0;
}

if !place_meeting(x,y+1,o_wall){
	vspeed_ += gravity_;
	}else{
		if keyboard_check_pressed (ord("W")){
		vspeed_= -14;
		}}
	
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
y +=vspeed_;