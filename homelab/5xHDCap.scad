thickness=1;


iw=103;
ow=iw+(2*thickness);
il=144;
ol=il+(2*thickness);
h=30; // Just for testing
hdlen=144/5; //this should be equal to il/5

screw_r=2;
screw_offset=thickness+6;
screw_delta=29.5;

xs=8;
ys=4.7;


difference() {
// outside cube
cube([iw+(thickness*2),il+(thickness*2),h]);

// inside cubes
for(hd=[1:hdlen:hdlen*5]) {
translate([thickness,hd,1])
       cube([iw,hdlen-thickness,h+2]);
}

// fan hole
translate([ow/2,20+ow/2,-1])
    cylinder(r=iw/2,h=thickness+2);
//translate([8,8,-1]) cylinder(r=2.25,h=4,center=false);
//translate([8,113,-1]) cylinder(r=2.25,h=4,center=false);
//translate([113,8,-1]) cylinder(r=2.25,h=4,center=false);
//translate([113,113,-1]) cylinder(r=2.25,h=4,center=false);

// gap
translate([1,1,1])
    cube([iw,il,6]);

// screw holes
for(x=[screw_offset:screw_delta:screw_delta*6]){
    rotate([90,0,90])
        translate([x,h-5,-2])
            cylinder(r=screw_r,h=iw+4,center=false);
}
}



//difference() {
//cube([ow,ol,thickness]);
//translate([ow/2,20+ow/2,-1]) cylinder(r=iw/2,h=thickness+2);
//translate([8,8,-1]) cylinder(r=2.25,h=4,center=false);
//translate([8,113,-1]) cylinder(r=2.25,h=4,center=false);
//translate([113,8,-1]) cylinder(r=2.25,h=4,center=false);
//translate([113,113,-1]) cylinder(r=2.25,h=4,center=false);
//}

// grill
//for(x=[0:xs*2:120]){
//for(y=[0:ys*2:120]){
//translate([x+0,y+0,-1]) cylinder(r=5,h=4,$fn=6,center=false);
//translate([x+xs,y+ys,-1]) cylinder(r=5,h=4,$fn=6,center=false);
//}}


