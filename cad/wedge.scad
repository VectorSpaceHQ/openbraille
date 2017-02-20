wedge_length = 0.5; // y-dir
wedge_width = 1.1; // x-dir
wedge_height = 0.48; // z-dir

slot_width = 0.35;
slot_length = 0.2;
slot_height = 0.35;
top_border = wedge_width - 2 * slot_width;

module prism(l, w, h){
polyhedron(
points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
);
}

difference() {
    prism(wedge_width, wedge_length*.75, wedge_height);
    
    translate([.2, .2, 0]) cube([slot_width, slot_length, slot_height]);
}

// cut the slot using two cubes
difference() {
    translate([0, wedge_length*.75, 0])
    cube([wedge_width, wedge_length/2, wedge_height]);
    
    translate([.2, .15+slot_length, 0]) cube([slot_width, slot_length, slot_height]);
    translate([.2+slot_width, .15+slot_length, 0]) cube([slot_width, slot_length, slot_height]);

}
