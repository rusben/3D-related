$fn = 64;

// CYLINDER BOTTOM
$DIAMETER_BOTTOM_DOWN = 90;
$DIAMETER_BOTTOM_UP = 65;
$HEIGHT_BOTTOM = 14;
// CYLINDER TOP
$DIAMETER_TOP_DOWN = 65;
$DIAMETER_TOP_UP = 35;
$HEIGHT_TOP = 16;
// NAIL
$DIAMETER_NAIL = 11;
$HEIGHT_NAIL = 20;


module body($ratio=1) {
    
difference() {
    union(){
        hull() {
            // Bottom
            cylinder(r1=$DIAMETER_BOTTOM_DOWN/2*$ratio, r2=$DIAMETER_BOTTOM_UP/2*$ratio, h=$HEIGHT_BOTTOM*$ratio);
            scale([1,1,0.5]) sphere($DIAMETER_BOTTOM_DOWN/2*$ratio);    
            }
        hull() {
            // Top
            translate([0,0,$HEIGHT_BOTTOM*$ratio]) cylinder(r1=$DIAMETER_TOP_DOWN/2*$ratio, r2=$DIAMETER_TOP_UP/2*$ratio, h=$HEIGHT_TOP*$ratio);
            translate([0,0,$HEIGHT_BOTTOM*$ratio]) scale([1,1,0.5]) sphere($DIAMETER_TOP_DOWN/2*$ratio);
            }
    }
    
    // Minus square
    translate([-$DIAMETER_BOTTOM_DOWN/2*$ratio,-$DIAMETER_BOTTOM_DOWN/2*$ratio,-$DIAMETER_BOTTOM_DOWN*$ratio]) cube($DIAMETER_BOTTOM_DOWN*$ratio);
    }
}

module nail() {
// Tornillo
translate([0,0,$HEIGHT_BOTTOM+$HEIGHT_TOP-$HEIGHT_NAIL]) { cylinder(r=$DIAMETER_NAIL/2, h=$HEIGHT_NAIL); }


translate([0,0,$HEIGHT_BOTTOM+$HEIGHT_TOP-10])  {
    // combining both relatively complex shapes can be created
    color("gray")
    
        linear_extrude(height = 20, twist = -360*3, scale = 1, center = true, slices = 200)
            square([12, 12], center = true);
    }
}


difference() {
body();
body(0.9);
}

nail();
