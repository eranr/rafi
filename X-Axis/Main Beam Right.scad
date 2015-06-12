include <configuration.scad>

module MainBeamRight(){
	difference(){
		cube([122,39,9.8], center = true);
		translate([-22,0,0]) cylinder(h=9.9, r=m3_diameter/2, center=true);
		// 4 X M5 holes to connect to rail block
		translate ([35.5, 13, 0]) cylinder(h=9.9, r=m5_diameter/2, center=true);
		translate([35.5, -13,0]) cylinder(h=9.9, r=m5_diameter/2, center=true);
		translate([-5.5,13,0]) cylinder(h=9.9, r=m5_diameter/2, center=true);
		translate([-5.5,-13,0]) cylinder(h=9.9, r=m5_diameter/2, center=true);

		// Additional 2 X M5 holes to connect motor holder to base
		translate([52.5,13,0]) cylinder(h=9.9, r=m5_diameter/2, center=true);
		translate([52.5,-13,0]) cylinder(h=9.9, r=m5_diameter/2, center=true);
	}


   // M4 holes to connect to beam central piece.
	difference(){
		translate([-56.03, 24.5,0]) cube([10,10,9.8], center = true);
		translate([-56.03, 24.5,0]){
			rotate(a=[0,90,0]) cylinder(h=10.1, r=m4_diameter/2, center=true);
		}
	}

	difference(){
		translate([-56.03, -24.5,0]) cube([10,10,9.8], center = true);
		translate([-56.03, -24.5,0]){
			//cube([10,10,9.8], center = false);
			rotate(a=[0,90,0]) cylinder(h=10.1, r=m4_diameter/2, center=true);
		}
	}
}


MainBeamRight();