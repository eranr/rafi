include <configuration.scad>
module YRodEnd(){
	difference(){
		cube([20,20,6], center = true);
      translate([0,-1,0]) cylinder(r=8, h=6.1, center = true);
   }

	difference(){
      translate([-12.5,-7.5,0]) cube([5,5,6], center = true);

      translate([-12.5,-7.5,0]) rotate (a=[90,0,0]) cylinder(h=10.1, r=2, center = true);
   }

	difference(){
      translate([12.5,-7.5,0]) cube([5,5,6], center = true);
      translate([12.5,-7.5,0]) rotate (a=[90,0,0]) cylinder(h=10.1, r=2, center = true);
   }

}

YRodEnd();
