thickness=1;

il=113;
iw=144;
h=thickness;

screw_r=2;
screw_offset=thickness+6;
screw_delta=29.5;


difference() {
// outside cube
cube([iw+(thickness*2),il+(thickness*2),h]);


for(x=[screw_offset:screw_delta:screw_delta*5]){
    translate([x,5,-1])
        cylinder(r=screw_r,h=h+2,center=false);

    translate([x,103+5,-1])
        cylinder(r=screw_r,h=h+2,center=false);
}

xs=8;
ys=4.7;
for(x=[10:xs*2:iw-10]){
for(y=[15:ys*2:il-15]){
translate([x+0,y+0,-1]) cylinder(r=5,h=4,$fn=6,center=false);
translate([x+xs,y+ys,-1]) cylinder(r=5,h=4,$fn=6,center=false);
}}
// inside cube
//translate([thickness,thickness,-1])
//       cube([iw,il,h+2]);

}




// screw holes





