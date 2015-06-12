include <configuration.scad>
module ZBracket(){
	difference(){
		cube([30.09,73.23,12.7], center = true);
		translate([0, 19.805, 0]) {
			translate([0,0,0]) cylinder(h=12.71, r=6.8, center=true);
			translate([6.985,6.985,0]) cylinder(h=14.1, r=m3_diameter/2, center=true);
			translate([-6.985,6.985,0]) cylinder(h=14.1, r=m3_diameter/2, center=true);
			translate([6.985,-6.985,0]) cylinder(h=14.1, r=m3_diameter/2, center=true);
			translate([-6.985,-6.985,0]) cylinder(h=14.1, r=m3_diameter/2, center=true);
		}
		translate([0, -29.715, 0]) cylinder(h=13, r=m8_diameter/2, center=true);
	}

	

	translate([-20.795,31.605,0]) {
		difference() {
			cube([13.27,10.02,12.7], center = true);
			rotate([90,0,0]) cylinder(h=10.03, r=2.17, center=true);
		}
	}
			
	translate([20.795,31.605,0]) {
		difference() {
			cube([13.27,10.02,12.7], center = true);
			rotate([90,0,0]) cylinder(h=10.03, r=2.17, center=true);
		}
	}
}

ZBracket();

