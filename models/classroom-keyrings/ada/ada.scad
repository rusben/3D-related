module base(){
       difference(){ 
            square([65,20]);
            
            translate([3,10])
            circle([10], $fn=100);
            
            translate([60,1])
            square([4,18]);
       }
}

module ada(){
    linear_extrude(1){
        difference(){ 
            base();

            translate([5,5])
            scale([1.0,1.0])
            text("Ada");
            
            translate([40,1])   
            scale([0.1125,0.1125,0.1])  
            
            import("ada.dxf");
        }
        translate([64,6.5])
        rotate(90)
        scale([0.24,0.42])
        text("ADA");
    }   
    
    // fondo figura
    translate([40,0,0])
    cube([20,20,0.25]);
}

scale([1,1,2])
ada();