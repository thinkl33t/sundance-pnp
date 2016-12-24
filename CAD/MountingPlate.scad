$fa = 1;
$fs = 1;

difference()
{
    square([330,320], center=true);
    for(x = [-1, 1])
    {
        for(y = [-1, 1])
        {
            translate([x*(300/2), (y*(260/2))-10]) 
            {
                circle(d=6);
                
                for(i = [-1, 1])
                    for(j = [-1, 1])
                        translate([i*15.5/2, (j*15.5/2)+25]) circle(d=4);
            }
        }
    }
}