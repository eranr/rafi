include <configuration.scad>

motor_width = 42.6;
center_height = 40;

module 3DTriangle() {
   rotate(a=[90,0,0])
	linear_extrude(height = 60, convexity = 0, twist = 0)
    polygon(points=[[0,0],[40,0],[0,65-14.5]],paths=[[1,2,0]]);
}

module XMotorHolderBase() {
		cube([20.1,60,65]);
		translate([0,-20,25]) cube([20.1,100,30]);
       cube([60,60,14.6]);
		translate([20,60,14.5]) 3DTriangle();
}

module XMotorHolder() {
    difference() {
		XMotorHolderBase(center = true);
		// Substract the motor outline
		// X-movement: 60-42.5 the holder base minus motor body
		// Y-movement: 
		// Z-movement: center_height - The height above the beam. Should be aligned with rod end and rod mount.
		translate([60-42.5,30,center_height]) rotate(a=[90,0,270]) MotorOutline(center=true);
		// 2 X M5 holes to attach to block rails
		translate([60-25.5,60/2+13,10]) cylinder(h=4.6,r=5);
		translate([60-25.5,60/2+13,-0.01]) cylinder(h=20,r=m5_diameter/2);
		translate([60-25.5,60/2-13,10]) cylinder(h=4.6,r=5);
		translate([60-25.5,60/2-13,-0.01]) cylinder(h=20,r=m5_diameter/2);
		// 2 X M5 holes to attach motor holder to base
		translate([60-25.5+17,60/2+13,10]) cylinder(h=4.6,r=5);
		translate([60-25.5+17,60/2+13,-0.01]) cylinder(h=20,r=m5_diameter/2);
		translate([60-25.5+17,60/2-13,10]) cylinder(h=4.6,r=5);
		translate([60-25.5+17,60/2-13,-0.01]) cylinder(h=20,r=m5_diameter/2);
		// Two holes for M8 stabilizing rods.
		translate([15,-10,center_height])rotate(a=[90,0,270]) cylinder(h=20,r=4);
		translate([15,70,center_height])rotate(a=[90,0,270]) cylinder(h=20,r=4);
    }
}

module M3Slot() {
	rotate(a=[0,0,90]) {
	cylinder(h=21, r=m3_diameter/2);
	translate([0,-m3_diameter/2,0])  cube([10-m3_diameter,m3_diameter,21]);
	translate([10-m3_diameter,0,0]) cylinder(h=21, r=m3_diameter/2);
	}
}

module MotorOutline(){  
		// Motor cylinder
		cylinder(h=21,r=11.23);
		// Motor 4 M3 holes for tightening
		//translate([15.82,15.82-(10-m3_diameter)/2,0]) M3Slot();
		//translate([-15.82,15.82-(10-m3_diameter)/2,0]) M3Slot();
		//translate([15.82,-15.82-(10-m3_diameter)/2,0]) M3Slot();
		//translate([-15.82,-15.82-(10-m3_diameter)/2,0]) M3Slot();

		translate([15.82,15.82,0]) cylinder(h=21, r=m3_diameter/2);
		translate([-15.82,15.82,0]) cylinder(h=21, r=m3_diameter/2);
		translate([15.82,-15.82,0]) cylinder(h=21, r=m3_diameter/2);
		translate([-15.82,-15.82,0]) cylinder(h=21, r=m3_diameter/2);

		 // Motor Body
		 translate([0,0,-42.5/2]) cube([motor_width,motor_width+10,42.51], center=true);
        // Room for wires
        translate([0,-(motor_width+8)/2,-(42.5-12/2)]) cube([12,13,12.05], center = true);
}

rotate(a=[180,270,0]) XMotorHolder();
