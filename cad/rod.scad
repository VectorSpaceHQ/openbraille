rod_width = 0.35;
rod_length = 10;

cube([rod_length, rod_width, rod_width]);

translate([2,0,0])
        cube([rod_width, rod_width, rod_width]);
