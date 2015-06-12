include <configuration.scad>
module MainBeamCenter(){
	difference(){
		cube([102,39,9.8], center = true);
		// 2 Mounting point to X-Axis rail
		translate ([-30, 0, 0]) cylinder(h=9.9, r=m3_diameter/2, center=true);
		translate ([30, 0, 0]) cylinder(h=9.9, r=m3_diameter/2, center=true);

		// 2 Mounting points to Y-Axis Lead
		translate([12,13.15,0]) cylinder(h=9.9, r=m4_diameter/2, center=true);
		translate([-12,13.15,0]) cylinder(h=9.9, r=m4_diameter/2, center=true);

		// 2 Mounting points to Y-Axis Lead
		translate([12,-13.15,0]) cylinder(h=9.9, r=m4_diameter/2, center=true);
		translate([-12,-13.15,0]) cylinder(h=9.9, r=m4_diameter/2, center=true);

	}

	difference(){
		translate([46, 24.5,0]) cube([10,10,9.8], center = true);
		translate([46, 24.5,0]){
			//cube([10,10,9.8], center = false);
			rotate(a=[0,90,0]) cylinder(h=10.1, r=m4_diameter/2, center=true);
		}
	}

	difference(){
		translate([46, -24.5,0]) cube([10,10,9.8], center = true);
		translate([46, -24.5,0]){
			//cube([10,10,9.8], center = false);
			rotate(a=[0,90,0]) cylinder(h=10.1, r=m4_diameter/2, center=true);
		}
	}

	difference(){
		translate([-46, 24.5,0]) cube([10,10,9.8], center = true);
		translate([-46, 24.5,0]){
			//cube([10,10,9.8], center = false);
			rotate(a=[0,90,0]) cylinder(h=10.1, r=m4_diameter/2, center=true);
		}
	}

	difference(){
		translate([-46, -24.5,0]) cube([10,10,9.8], center = true);
		translate([-46, -24.5,0]){
			//cube([10,10,9.8], center = false);
			rotate(a=[0,90,0]) cylinder(h=10.1, r=m4_diameter/2, center=true);
		}
	}


}

MainBeamCenter();
