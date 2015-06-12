include <configuration.scad>

module SwitchMountBottom(){
	difference () {
		cube([40,15,5], center=true);
		translate([17,0,0]) cylinder(r=m3_diameter/2,h=5.1, center=true);
		translate([-17,0,0]) cylinder(r=m3_diameter/2,h=5.1, center=true);
		translate([0,-5,0]) cylinder(r=m3_diameter/2,h=5.1, center=true);

	}

	translate([10,0,-7.5]) cube([5,15,10], center=true);
	translate([-10,0,-7.5]) cube([5,15,10], center=true);

}

rotate(a=[90,0,0]) SwitchMountBottom();