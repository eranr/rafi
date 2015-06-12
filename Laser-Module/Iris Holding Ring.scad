include <configuration.scad>

module IrisHolder() {

    difference() {
        cylinder(h=13.4-6.4,r=10.5);
        translate([0,0,-0.01]) cylinder(h=13.4-6.2,r=6.5);
        // Two holes to mount Iris Holder 
        //rotate(a=[90,0,0]) translate([0,3,6])cylinder(r=m3_diameter/2,h=6);
        //rotate(a=[90,0,0]) translate([0,3,-12])cylinder(r=m3_diameter/2,h=6);
    }
}

IrisHolder();