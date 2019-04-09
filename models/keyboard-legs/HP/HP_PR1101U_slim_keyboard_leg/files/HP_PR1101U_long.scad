    union() {
        //right half
        difference() {
            rotate([90,0,0]) import("HP_keyboard_leg.STL", convexity=3);
            translate([0,-15-15,0]) cube([60,30,20],true);
        }
        //left half
        difference() {
            translate([0,-2,0]) rotate([90,0,0]) import("HP_keyboard_leg.STL", convexity=3);
            cube([60,30,20],true);
        }
    }