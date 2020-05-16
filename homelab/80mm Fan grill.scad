


//difference() {
//cube([142,118,2]);
//translate([58,58,-1])
//cylinder(r=50,h=4);
//cube([140,109,2]); 
//}


difference() {
translate([60,60,0]) cylinder(r=60,h=2,center=false);
xs=8;
ys=4.7;
for(x=[0:xs*2:120]){
for(y=[0:ys*2:120]){
translate([x+0,y+0,-1]) cylinder(r=5,h=4,$fn=6,center=false);
translate([x+xs,y+ys,-1]) cylinder(r=5,h=4,$fn=6,center=false);
}}
}

difference() {
cube([120,120,2]);
translate([60,60,-1]) cylinder(r=55,h=4);
translate([8,8,-1]) cylinder(r=2.25,h=4,center=false);
translate([8,113,-1]) cylinder(r=2.25,h=4,center=false);
translate([113,8,-1]) cylinder(r=2.25,h=4,center=false);
translate([113,113,-1]) cylinder(r=2.25,h=4,center=false);
}



//for(a=[8:16:100]){
//}