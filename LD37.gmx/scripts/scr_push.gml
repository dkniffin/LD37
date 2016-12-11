///scr_push

h_displacement = hspd/2

// Horizontal push
if (place_meeting(x+h_displacement, y, obj_pushable)) {
    var pushable = instance_place(x+h_displacement, y, obj_pushable);
    with(pushable) {
        scr_move(obj_player.hspd/2, 0);
    }
    hspd /= 2;
}

// Vertical push
if (place_meeting(x+vspd/2, y, obj_pushable)) {
    var pushable = instance_place(x+vspd/2, y, obj_pushable);
    with(pushable) {
        scr_move(obj_player.vspd/2, 0);
    }
    vspd /= 2;
}
