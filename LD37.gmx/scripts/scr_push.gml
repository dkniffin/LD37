///scr_push

// Horizontal push
if (place_meeting(x+hspd/2, y, obj_pushable)) {
    var pushable = instance_place(x+hspd/2, y, obj_pushable);
    with(pushable) {
        scr_move(obj_player.hspd/2, 0);
    }
    hspd /= 2;
}

// Vertical push
if (place_meeting(x, y+vspd/2, obj_pushable)) {
    var pushable = instance_place(x, y+vspd/2, obj_pushable);
    with(pushable) {
        scr_move(0, obj_player.vspd/2);
    }
    vspd /= 2;
}
