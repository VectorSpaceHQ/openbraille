base_length = 2.34;
base_width = 2.34;
base_lr_border = 0.2;
base_tb_border = 0.44;

cavity_length = 1;
cavity_width = 1.45;

// Cell Body
difference(){
    cube([9.98, 16.12, 10]);

    dx = 2.34;
    for (j=[0:2]){
        for (i = [0:1]){
        translate([1.8+dx*i+2*i, 4.55+.7*j+dx*j, 5])
            cube([2.3, 2.3, 5]);
        }
    }
}

