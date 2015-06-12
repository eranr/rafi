include <configuration.scad>

module SwitchMountTop(){
	difference () {
		cube([40,15,10], center=true);
		translate([17,0,0]) cylinder(r=m3_diameter/2,h=10.1, center=true);
		translate([-17,0,0]) cylinder(r=m3_diameter/2,h=10.1, center=true);

		translate([0,0,-1.8]) cube([25,15.1,6.41], center=true);
	}

	translate([4.75,2.5,-0.6]) cylinder(r=2.3/2,h=4, center=true);
	translate([-4.75,2.5,-0.6]) cylinder(r=2.3/2,h=4, center=true);

}

rotate (a=[180,0,0]) SwitchMountTop();