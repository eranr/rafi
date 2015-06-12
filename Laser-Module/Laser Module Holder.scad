include <configuration.scad>

// We want to be 40mm above the beam.
// The block on which the XRodMound it 'mounted' is already 24mm above the beam.
center_height = 40;
block_height = 24;
flange_hole_height = center_height - block_height;
width=26;

module XRodMountBase() {
		translate([0,22.5,0]) cube([61,95,width-0.1], center = true);
		translate([0,(-25+flange_hole_height),0]) cube([105,30,width-0.1], center = true);
}

module oval() {
			cylinder(h=width+0.1, r=4, center=true);
			translate([0,-6,0]) cylinder(h=width+0.1, r=4, center=true);
			translate([-4,-6,-(width+0.1)/2]) cube([8,6,width+0.1]);
}

module XRodMount(){
	difference(){
		XRodMountBase();
		// Square hole for...
		translate([0,-14,0])cube([12.9,50,6.7],center =true);

		// Cylinder must be aligned with motor shaft height whose center is 40mm above the 
		// beam. This piece is to be mounted on the Rail which is at 24mm above the beam.
	   // hence we need more 16 mm.
		//translate([0,(-25+flange_hole_height),0]) cylinder(h=width+0.1, r=4, center=true);
		translate([0,(-25+flange_hole_height)+3,0]) oval();

		// 'Base Hole' for laser module and wires
		translate([0,37,0]) rotate(a=[90,0,0]) cylinder(r=6, h=56, center = true);
		translate([0,7.5,0]) cylinder(r=3, h=width+.1, center = true);

       // Hole for bearings
       translate([-40,(-25+flange_hole_height),0]) cylinder(h=width, r=7.6, center=true);
       translate([+40,(-25+flange_hole_height),0]) cylinder(h=width, r=7.6, center=true);

		 // M5 Mount point to rail block
       translate([20.5,32,0]) rotate(a=[90,0,0]) cylinder(r=5.5, h=102.1, center=true);
       translate([20.5,-20,0]) rotate(a=[90,0,0]) cylinder(r=m5_diameter/2, h=10.1, center=true);
       translate([-20.5,32,0]) rotate(a=[90,0,0]) cylinder(r=5.5, h=102.1, center=true);
       translate([-20.5,-20,0]) rotate(a=[90,0,0]) cylinder(r=m5_diameter/2, h=10.1, center=true);

		 // Square hole for placing laser module holder
        rotate(a=[0,90,0]) translate([0,40,0]) cube([60,20,25], center=true);

		translate([0,62.5,0]) rotate(a=[270,90,0]) Iris();	
	}
}

module arc(radius, degree, height) {
    l=radius/cos(degree/2);
    linear_extrude(height = height) {
        intersection() {
            circle(r=radius,$fn=200);
            polygon(points=[[0,0],[0,l],[l*sin(degree),l*cos(degree)]], paths=[[0,1,2]]);
        }
    }
}

module Iris() {
    cylinder(r=10.5,h=15.4, center=true);
    translate([0,0,-(15.4+19)/2]) cylinder(r=6,h=19, center=true);
    translate([21,0,3]) cube([22,4,12], center=true);
    translate([0,0,-3]) rotate(a=[0,0,-45]) arc(17+11,90,2.1);
}

XRodMount();
