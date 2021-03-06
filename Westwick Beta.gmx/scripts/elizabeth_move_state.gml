///elizabeth_move_state()
/// Movement

var hspd = (o_input.right - o_input.left)*spd;
var vspd = (o_input.down - o_input.up)*spd;

// Move
move(hspd, vspd);

// Check for a random encounter
if (!instance_exists(o_last_encounter)) {
    instance_create(x, y, o_last_encounter);
    o_last_encounter.distance = random_range(32, room_width/2);
} else {
    if(point_distance(x, y, o_last_encounter.x, o_last_encounter.y) >= o_last_encounter.distance) {
        o_last_encounter.distance = random_range(32, room_width/2);
        o_last_encounter.x = x;
        o_last_encounter.y = y;
        encounter();
    }
}
