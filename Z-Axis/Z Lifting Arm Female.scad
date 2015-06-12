include <configuration.scad>

module Arm() {
		cube([30,13,10], center = true);
		translate([-(15-13/2),0,0]) cube([13,13,25], center = true);
		translate([(15-13/2),0,-25]) cube([13,13,40], center = true);
		translate([47/2,0,-32.5]) cube([43,30,5], center = true);
		translate([47/2,0,-42.5]) cube([43,30,5], center = true);
}

module ZLiftingArmFemale(){
	difference(){
		Arm();
		translate([-8.5,0,0]) cylinder(h=50.1 ,r=m8_diameter/2, center = true);
	}
}
ZLiftingArmFemale();

