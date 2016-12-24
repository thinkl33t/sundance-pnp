$fs = 1;
$fa = 1;

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

module measure(width=3, height=2)
{
    difference()
    {
        translate([10*width, 10*height]) rounded_square([20*width,20*height],5);

        for (x=[10:20:(20*width-10)])
        {
            for (y=[10:20:(20*height-10)])
            {
                translate([x,y]) circle(d=4);
            }
        }
    }
}

measure();

translate([0,45]) measure(1,2);

translate([25,45]) measure(2,2);