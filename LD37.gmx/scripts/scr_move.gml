///scr_move(hspd,vspd)
var hspd = argument[0];
var vspd = argument[1];

// Horizontal Collision
if (place_meeting(x+hspd,y,obj_wall)) {
    while(!place_meeting(x+sign(hspd),y,obj_wall)){
        x += sign(hspd);
    }
    hspd = 0;
}
x += hspd;

// Vertical Collision
if (place_meeting(x,y+vspd,obj_wall))
{
    while(!place_meeting(x,y+sign(vspd),obj_wall))
    {
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;
