$fn = 64;
module card(x, y, z, border_radius) {
    
//    color ("pink") linear_extrude(height = 10, center = true, convexity = 10)
//        import (file = "puig-logo.dxf");
    
    difference() {
        minkowski()
        {
            cube(size=[x-border_radius*2,y-border_radius*2,z], center=true);
            cylinder(r=border_radius);
        }    
    
        translate([0,y/4,0]) {       
        rotate([0,180,180]) scale([0.25,0.25,1]) text("Champions League 2017")  linear_extrude(height = 1, center = true, convexity = 1);
        
        translate([0,5,0]) rotate([0,180,180]) scale([0.25,0.25,1]) text("Institut Puig Castellar")  linear_extrude(height = 1, center = true, convexity = 1);
 }
        
    //    translate([0,5+5/1.5,0]) rotate([0,180,180]) scale([0.125,0.125,1]) text("20 de decembre de 2017")  linear_extrude(height = 1, center = true, convexity = 1);
    }
}

$X = 85.60;
$Y = 53.98;
$Z = 0.3;
$BORDER_RADIUS = 5;

card($X, $Y, $Z, $BORDER_RADIUS);