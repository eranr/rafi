include <configuration.scad>

module leg(){
	difference () {
		cylinder(h=50, r1=20, r2=12,center=true);
		translate([0,0,-10.1]) cylinder(h=30, r1=14, r2=10,center=true);

    }
}

module screw_outline() {
	cylinder(r=6.5,h=5, center=true);
	translate([0,0,12]) cylinder(r=m6_diameter/2,h=30, center=true);
}

difference() {
    leg();
    translate([0,0,7]) screw_outline();
}