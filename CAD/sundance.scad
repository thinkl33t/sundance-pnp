use <makerslide.scad>;
use <tslot.scad>;
use <MotorMount.scad>;

length=400;

// Bed
for(x=[-(length/2)+10, 0, (length/2)-10]) translate([x,0,0]) rotate([90,0,0]) tslot2020(550, center=true);
for(r=[0,180]) rotate([0,0,r]) translate([0,285,10]) rotate([90,0,90]) makerslide(length);
color("khaki") translate([0,0,19]) cube([400, 550, 18], center=true);

for(m=[0,1]) mirror([0,m,0]) translate([0,-305,42]) rotate([90,0,0]) motor_mount();

translate([0,0,97]) rotate([90,0,0]) makerslide(610-3);
