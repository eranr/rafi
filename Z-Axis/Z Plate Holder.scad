include <configuration.scad>

h=7.2; //~0.25 inch

module PlatePositive() {
		cylinder(h=5 ,r=42, center = true);
		//translate([0,0,h+2*2.5])cylinder(h=5 ,r=46, center = true);
		translate([0,0,h+5])cylinder(h=5 ,r=46, center = true);
		translate([0,-39.5,12.5]) cube([13,13,30], center = true);
}

module holes(count, x_middle, y_middle) {
	for (i = [0 : count])
	{
		for (j = [0 : count])
		{
			translate([x_middle+(j*15), y_middle+(i*15),0]) cylinder(h=5.1,r=1, center=true);
			translate([x_middle-(j*15), y_middle+(i*15),0]) cylinder(h=5.1,r=1, center=true);
		}
	}
}
module ZPlateHolder(){
	difference(){
		PlatePositive();
		translate([0,-39.5,20]) cylinder(h=50 ,r=m8_diameter/2, center = true);
		translate([-46,-25,-3.5+h+2*2.5]) cube([100,90,7]);
      holes(5,0,-25);
	}
}
ZPlateHolder();