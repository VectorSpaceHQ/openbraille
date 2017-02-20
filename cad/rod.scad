rod_width = 0.35;
rod_length = 15;

cube([rod_length, rod_width, rod_width]);

// pegs
translate([5,0,0])
        cube([rod_width, rod_width, rod_width*3]);
translate([5+2.34,0,0])
        cube([rod_width, rod_width, rod_width*3]);
translate([5+2*2.34,0,0])
        cube([rod_width, rod_width, rod_width*3]);
