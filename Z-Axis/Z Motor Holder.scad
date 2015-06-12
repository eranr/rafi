include <configuration.scad>

module eliptic_hole() {
    cube([4,m6_diameter,21], center = true);
    translate([4/2,0,0]) cylinder(h=21, r=m6_diameter/2,center = true);
    translate([-4/2,0,0]) cylinder(h=21, r=m6_diameter/2,center = true);
}

module zMotorHolder() {
	difference(){
		cube([80,85,10], center = true);
		translate([0,0,-10]) cylinder(h=21,r=13);
		translate([15.82,15.82,-10]) cylinder(h=21, r=2.25);
		translate([-15.82,15.82,-10]) cylinder(h=21, r=2.25);
		translate([15.82,-15.82,-10]) cylinder(h=21, r=2.25);
		translate([-15.82,-15.82,-10]) cylinder(h=21, r=2.25);

		translate([30,35,0]) eliptic_hole();
		translate([30,-35,0]) eliptic_hole();
		translate([-30,35,0]) eliptic_hole();
		translate([-30,-35,0]) eliptic_hole();
    }
}

zMotorHolder();
