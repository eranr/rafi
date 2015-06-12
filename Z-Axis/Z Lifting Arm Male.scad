include <configuration.scad>

module Liftee() {
	cube([50,30,4], center = true);
	translate([(50-13)/2,0,0]) cube([13,13,70], center = true);		
}

module ZLiftingArmMale() {
	difference() {
		Liftee();
		translate([(50-13)/2,0,0]) cylinder(r=m8_diameter/2,h=71, center = true);
	}
}

rotate(a=[0,90,0]) ZLiftingArmMale();