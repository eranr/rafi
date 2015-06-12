include <configuration.scad>
module XMotorHolder(){
	difference(){
		cube([62,46,12], center = true);
      translate([0,-6.05,0]) cube([42,34,12.1], center = true);
   }

	difference(){
      translate([-36,-18,0]) cube([15,10,12.1], center = true);
      translate([-36,-18,0]) rotate (a=[90,0,0]) cylinder(h=10.1, r=m4_diameter/2, center = true);
   }

	difference(){
      translate([36,-18,0]) cube([15,10,12.1], center = true);
      translate([36,-18,0]) rotate (a=[90,0,0]) cylinder(h=10.1, r=m4_diameter/2, center = true);
   }

}

XMotorHolder();
