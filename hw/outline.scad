DIA=28;
DIA_INNER=25.4;

module outline()
{
    minkowski()
    {
        roundess=1;
        intersection()
        {
            polygon(points=[[0,0],[-100,300],[100,300]],paths=[[0,1,2]]);
                circle(r=DIA/2-roundess);
        }
        circle(r = roundess, center=true);
    }
    circle(r=DIA_INNER/2);
}
module topmodule()
{
    difference()
    {
        outline();
        //circle(r=5/2, $fn=6, center=true);
    }
}

$fn=100;
//translate([DIA_INNER/2 + 1, -(DIA_INNER/2 + 1)])
translate([DIA_INNER/2 + 1.27, DIA_INNER/2 + 1.27])
rotate([0,0,-45])
topmodule();