$fa = 1;
$fs = 1;

module rounded_cube(dim, d)
{
    hull()
    {
        for (x=[-(dim[0]-d)/2, (dim[0]-d)/2])
        {
            for (y=[-(dim[1]-d)/2, (dim[1]-d)/2])
            {
                translate([x,y]) cylinder(d=d, h=dim[2]);
            }
        }
    }
}


module beltholder()
{
    difference()
    {
        translate([3,10, -2.5]) rounded_cube([45,40, 5], 5);

        // Bottom Slot
        translate([-10,0]) hull()
        {
            for (x=[-3,3]) translate([x, 0]) cylinder(d=5.5, h=6, center=true);
        }
        
        translate([-10,0,3]) hull()
        {
            for (x=[-3,3]) translate([x, 0]) cylinder(d=10, h=6, center=true);
        }
        
        // Top Slot
        translate([10,0])hull()
        {
            for (x=[-3,3]) translate([x, 0]) cylinder(d=5.5, h=6, center=true);
        }
        
        // M5 Half Nut
        translate([0,25]) cylinder(d=5, h=10, center=true);
        translate([0,25,-1]) cylinder(r=8 / 2 / cos(180 / 6) + 0.05, $fn=6, h=4, center=true);

        // Hole for belt
        translate([21,12.5]) cube([2, 15, 6], center=true);

        //belt teeth
        for (x=[-20:2:20])
            translate([x,12.5,2]) rotate([90,0,0]) cylinder(d=1.5, h=15, center=true);

        //belt inset
        translate([-10,12.5,2.5]) cube([60,15,1], center=true);
    }
}

module beltholder_cover()
{
    difference()
    {
        translate([3,10, -2.5]) rounded_cube([45,40, 3], 5);

        // Big Slot
        translate([-10,0]) hull()
        {
            for (x=[-3,3]) translate([x, 0]) cylinder(d=10, h=6, center=true);
        }
        
        // Small Slot
        translate([10,0])hull()
        {
            for (x=[-3,3]) translate([x, 0]) cylinder(d=5.5, h=6, center=true);
        }
        
        // M5 Half Nut
        translate([0,25]) cylinder(d=5, h=10, center=true);

        // Hole for belt
        translate([0,12.5]) cube([5, 15, 6], center=true);
    }
}


translate([-25, 12]) beltholder();
translate([25, 12]) beltholder_cover();
mirror([0,1,0])
{
translate([-25, 12]) beltholder();
translate([25, 12]) beltholder_cover();
}
