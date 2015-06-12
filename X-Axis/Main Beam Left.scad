include <configuration.scad>
module MainBeamLeft(){
	difference(){
		cube([102,39,9.8], center = true);
		translate([-12,0,0]) cylinder(h=9.9, r=m3_diameter/2, center=true);
		translate ([45.5, 13, 0]) cylinder(h=9.9, r=m5_diameter/2, center=true);
		translate([45.5, -13,0]) cylinder(h=9.9, r=m5_diameter/2, center=true);
		translate([4.5,13,0]) cylinder(h=9.9, r=m5_diameter/2, center=true);
		translate([4.5,-13,0]) cylinder(h=9.9, r=m5_diameter/2, center=true);
	}

   // Connecting point to X Rod End
	difference(){
		translate([23, 27,0]) cube([30,20,9.8], center = true);
		translate([23, 33,0]) cylinder(h=10.1, r=m4_diameter/2, center=true);
	}

   // Connecting point to X Rod End
	difference(){
		translate([23, -27,0]) cube([30,20,9.8], center = true);
		translate([23, -33,0]) cylinder(h=10.1, r=m4_diameter/2, center=true);
	}

	difference(){
		translate([-46.03, 24.5,0]) cube([10,10,9.8], center = true);
		translate([-46.03, 24.5,0]){
			//cube([10,10,9.8], center = false);
			rotate(a=[0,90,0]) cylinder(h=10.1, r=m4_diameter/2, center=true);
		}
	}

	difference(){
		translate([-46.03, -24.5,0]) cube([10,10,9.8], center = true);
		translate([-46.03, -24.5,0]){
			//cube([10,10,9.8], center = false);
			rotate(a=[0,90,0]) cylinder(h=10.1, r=m4_diameter/2, center=true);
		}
	}

}

MainBeamLeft();
