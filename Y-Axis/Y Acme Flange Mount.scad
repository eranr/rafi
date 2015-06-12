include <configuration.scad>
module XRodMount(){
	difference(){
		cube([31.59,34,39], center = true);
		translate([-1.26,0,0]) {
			cylinder(h=39.1, r=6.8, center=true);
			translate([6.985,6.985,13.15]) cylinder(h=12.8, r=m3_diameter/2, center=true);
			translate([-6.985,6.985,13.15]) cylinder(h=12.8, r=m3_diameter/2, center=true);
			translate([6.985,-6.985,13.15]) cylinder(h=12.8, r=m3_diameter/2, center=true);
			translate([-6.985,-6.985,13.15]) cylinder(h=12.8, r=m3_diameter/2, center=true);
		}

		translate([-1.26,0,1.8]) cube([19,19,10], center=true);
       // 4X M4 holes to connect to main beam 
		translate([-20,-12,13.15]) rotate(a=[0,90,0]) cylinder(h=40, r=m4_diameter/2);
		translate([-20,12,13.15]) rotate(a=[0,90,0]) cylinder(h=40, r=m4_diameter/2);
		translate([-20,-12,-13.15]) rotate(a=[0,90,0]) cylinder(h=40, r=m4_diameter/2);
		translate([-20,12,-13.15]) rotate(a=[0,90,0]) cylinder(h=40, r=m4_diameter/2);

	}

}

XRodMount();
	