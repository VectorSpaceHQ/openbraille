base_length = 2.34;
base_width = 2.34;
base_lr_border = 3.1;
base_tb_border = 5;

cavity_length = 2.34;
cavity_width = 1.45;

pin_radius = .72;
pin_diameter = 1.44;

rod_width = 0.2;

// Cell Body
difference(){
    // cell
    cube([10+2.34*2, 6.2+2.34, 2]);

    dx = 2.34;
    for (j=[0:2]){
        for (i = [0:1]){
        translate([5-.72+dx*j, base_lr_border-.72+dx*i+.1*i, .5])
            cube([cavity_width, cavity_length, 2]);
        }
    }
    
    translate([0,base_lr_border+pin_radius,0])
    cube([20,rod_width,1]);
    translate([0,base_lr_border+pin_radius+cavity_length,0])
    cube([20,rod_width,1]);
}

