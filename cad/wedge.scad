wedge_length = 0.5;
wedge_width = 1.1;
wedge_height = 0.48;

slot_width = 0.35;
slot_length = 0.4;
slot_height = 0.4;
top_border = wedge_width - 2 * slot_width;

module prism(l, w, h){
polyhedron(
points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
);
}

translate([2, 6, 10])
    prism(2, .6, wedge_height);
translate([2, 6.4, 10])
    cube([2, 1, wedge_height]);

// cut the slot using two cubes
cube([slot_width, slot_width, slot_height]);
translate([slot_width, 0, 0])
        cube([slot_width, slot_length, slot_height]);

