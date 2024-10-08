module base(){
   difference(){ 
        square([65,20]);
        
        translate([3,10])
        circle([10], $fn=100);
        
        translate([60,1])
        square([4,18]);
   }
}

module perlman(){
    linear_extrude(1){
        difference(){ 
            base();
            
            translate([5,6])
            scale([0.7,0.7])
            text("Perlman");
            
            translate([41,1])  
            scale([0.15,0.15,0.15])    
                       import("perlman.dxf");
        }
        translate([64.1,1.9])
        rotate(90)
        scale([0.25,0.44])
        text("PERLMAN");
    }

    // fondo figura
    translate([42,0,0])
    cube([18,20,0.25]);
}

scale([1,1,2])
perlman();