$fa = 1;
$fs = 0.1;

//v groove bearing is 15mm at the groove
module v_groove_bearing()
{
    cylinder(d=16, h=5);
}


module rounded_square(dim, d)
{
    hull()
    {
        for (x=[-(dim[0]-d)/2, (dim[0]-d)/2])
        {
            for (y=[-(dim[1]-d)/2, (dim[1]-d)/2])
            {
                translate([x,y]) circle(d=d);
            }
        }
    }
}

difference()
{
    // carriage body
    union()
    {
        linear_extrude(height=5)       
            rounded_square([80,100], 10);
        
        // Z axis nut trap
        translate([-7.5,-35,10])
            rotate([90,0,0]) 
                cylinder(d=15, h=30, center=true);
        translate([-7.5,-35,5])
            cube([15,30,10], center=true);
        
        // Camera holder
        translate([-20,25,12])
            rotate([90,0,0]) 
                cylinder(d=15, h=20, center=true);
        translate([-20,25,6])
            cube([15,20,12], center=true);
        translate([-20,25,19])
            rotate([0,90,0]) 
                cylinder(d=12, h=12, center=true);
        
        // motor holder
        translate([10, 15, 12.5]) cube([30,25,25], center=true);
        translate([10, 15,25])
            rotate([0,90,0]) 
                cylinder(d=12, h=30, center=true);
    } 
 
    // z axis bearing holes
    for (x=[-1,1])
        for (y=[-1, 1])
        {
            translate([x*(45.5+15)/2, y*40]) 
                cylinder(d=5, h=10, center=true);
            translate([x*(45.5+15)/2, y*40, 44]) 
                cylinder(r=8 / 2 / cos(180 / 6) + 0.05, $fn=6, h=83, center=true);
    }
    
    // cable chain
    translate([10, -40])
    {
        translate([0,0,2.5]) 
        {
            translate([0,0,3.75]) cylinder(d=3, h=6, center=true);
            translate([0,0,-1]) cylinder(r=5.5 / 2 / cos(180 / 6) + 0.1, $fn=6, h=3, center=true);
        }
        translate([8,7.5,2.5]) {
            translate([0,0,3.75]) cylinder(d=3, h=6, center=true);
            translate([0,0,-1]) cylinder(r=5.5 / 2 / cos(180 / 6) + 0.1, $fn=6, h=3, center=true);
        }
    }
    
    // Z axis nut trap
    translate([-7.5,0,10]) rotate([90,0,0]) cylinder(d=7, h=120, center=true);
    translate([-7.5,-43, 10]) cube([11,6,30], center=true);
    translate([-10,-20,33.30]) rotate([45,0,0]) cube([40,40,40],center=true);
    
    // Camera hole
    translate([-20, 50, 12]) rotate([90,0,0]) cylinder(d=10.5, h=38);
    translate([-20,25,22.3]) cube([6, 21, 20], center=true);
    translate([-20,25,19]) rotate([0,90,0])  cylinder(d=3.5, h=14, center=true);
    
    // stepper mount
    translate([10, 15, 12]) cube([21,31,21], center=true);
    translate([10, 15, 27]) cube([20,30,35], center=true);
    translate([10, 15,25]) rotate([0,90,0]) cylinder(d=4, h=31, center=true);
    translate([10, 15, 34.5]) cube([21,30,21], center=true);
    #translate([10,40,12]) rotate([90,0,0]) cylinder(d=20, h=20,center=true);
}

% translate([-20, 50, 12]) rotate([90,0,0]) cylinder(d=10, h=38);
% translate([10, 15, 12]) cube([20,30,20], center=true);
% translate([-7.5,0,10])
        rotate([90,0,0]) 
            cylinder(d=6, h=120, center=true);
