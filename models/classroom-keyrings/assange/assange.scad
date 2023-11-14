module base(){
   difference(){ 
        square([65,20]);
        
        translate([3,10])
        circle([10], $fn=100);
        
        translate([60,1])
        square([4,18]);
   }
}

module assange(){
    linear_extrude(1){
        difference(){ 
            base();
            
            translate([5,6])
            scale([0.7,0.7])
            text("Assange");
            
            translate([44,1])  
            scale([0.09,0.09,0.1])    
            import("assange.dxf");
        }
        translate([64.1,1.9])
        rotate(90)
        scale([0.25,0.44])
        text("ASSANGE");
    }

    // fondo figura
    translate([42,0,0])
    cube([18,20,0.25]);
}

scale([1,1,2])
assange();