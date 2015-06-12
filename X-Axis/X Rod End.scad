include <configuration.scad>

center_height = 40;

module XRodsEndBase() {
		cube([49,60,25], center = true);
		translate([0,-(60-center_height)/2,0]) cube([100,30,25], center = true);
}

module XRodEnd(){
	difference(){
		XRodsEndBase();
		// Height must align with the motor shaft center which is 40 above the beam.
       translate([0, -(60-center_height)/2, 0]) cylinder(h=30.1, r=8, center=true);
       // Holes for bearings rods
       translate([-40,-(60-center_height)/2,0]) cylinder(h=30.1, r=4, center=true);
       translate([+40,-(60-center_height)/2,0]) cylinder(h=30.1, r=4, center=true);
   
		// Holes allowing convenient screw of M4     
		translate([-33,10,0]) rotate(a=[90,0,0]) cylinder(r=5,h=50);
		translate([33,10,0]) rotate(a=[90,0,0]) cylinder(r=5,h=50);

   }

   // Connectors to Main Beam (Left)
   difference(){
		translate([-29.5, 25,0]) cube([15,10,25], center = true);
		translate([-33, 25,0]) rotate (a=[90,0,0]) cylinder(h=10.1, r=m4_diameter/2, center=true);
	}

   // Connectors to Main Beam (Left)
   difference(){
		translate([29.5, 25,0]) cube([15,10,25], center = true);
		translate([33, 25,0]) rotate (a=[90,0,0]) cylinder(h=10.1, r=m4_diameter/2, center=true);
	}

}

XRodEnd();
