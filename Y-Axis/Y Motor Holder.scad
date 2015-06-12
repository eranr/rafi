// Updated with:
// M3 diameter for stepper mount
// 4-40 hole of 4 mm diameter 
include <configuration.scad>
module MainBeamRodMount(){
	difference(){
		cube([45.93,33.6,12.7], center = true);
		translate([0, 4.79, 0]) {
			translate([0,0,0]) cylinder(h=12.71, r=11.23, center=true);
			translate([15.5,-15.5,0]) cylinder(h=12.71, r=2.25, center=true);
			translate([-15.5,-15.5,0]) cylinder(h=12.71, r=2.25, center=true);
		}
	}

	translate([-29.6,10.8,0]) {
		difference() {
			cube([13.27,12,12.7], center = true);
			rotate([90,0,0]) cylinder(h=12.1, r=2, center=true);
		}
	}
			
	translate([29.6,10.8,0]) {
		difference() {
			cube([13.27,12,12.7], center = true);
			rotate([90,0,0]) cylinder(h=12.1, r=2, center=true);
		}
	}
}

MainBeamRodMount();

