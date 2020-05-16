thickness=1;

iw=103;
il=144;
h=10; // Just for testing

screw_r=2;
screw_offset=thickness+6;
screw_delta=29.5;


difference() {
// outside cube
cube([iw+(thickness*2),il+(thickness*2),h]);

// inside cube
translate([thickness,thickness,-1])
       cube([iw,il,h+2]);

// screw holes
for(x=[screw_offset:screw_delta:screw_delta*6]){
    rotate([90,0,90])
        translate([x,h/2,-2])
            cylinder(r=screw_r,h=iw+4,center=false);
}
}



