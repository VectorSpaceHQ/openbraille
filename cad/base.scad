ncols = 1;
nlines = 1;

base_length = 2.34;
base_width = 2.34;

base_lr_border = 3.1;
base_tb_border = 5;

cell_length = 10 + 2.34*2;
cell_width = 6.2 + 2.34;

cavity_length = 2.34;
cavity_width = 1.45;

pin_radius = .72;
pin_diameter = pin_radius * 2;

rod_width = 0.2;


for(i_line = [0 : nlines-1]){
    for (j_col = [0 : ncols-1]){
    xoffset = (10+2.34*2) * i_line;
    yoffset = (6.2+2.34) * j_col;
    cell(xoffset, yoffset);
    }
}

module cell(xoffset, yoffset){
// Cell Body
    translate([xoffset, yoffset,0])
difference(){
    // cell
    cube([cell_length, cell_width, 2]);

    dx = base_length;
    for (j=[0:2]){
        for (i = [0:1]){
        translate([5-.72+dx*j, base_lr_border-.72+dx*i+.1*i, .5])
            cube([cavity_width, cavity_length, 2]);
        }
    }
    
    // defensive slots, x-dir
    translate([0,base_lr_border+pin_radius,0])
    cube([20,rod_width,.5]);
    translate([0,base_lr_border+pin_radius+cavity_length,0])
    cube([20,rod_width,.5]);
    
    // attacking slots, y-dir
    translate([5 , 0, 0])
    cube([rod_width, 20, .5]);
    translate([5+ cavity_length , 0, 0])
    cube([rod_width, 20, .5]);
    translate([5+ cavity_length * 2 , 0, 0])
    cube([rod_width, 20, .5]);
}


    dx = base_length;
    for (j=[0:2]){
        for (i = [0:1]){
        translate([xoffset+5+dx*j, yoffset + .01 +base_lr_border-.72+dx*i+.1*i, .5])
            cube([cavity_width/2, cavity_length/2, 1.5]);
        }
    }
}
