module base(){
   difference(){ 
        square([65,20]);
        
        translate([3,10])
        circle([10], $fn=100);
        
        translate([60,1])
        square([4,18]);
   }
}

module stallman(){
    linear_extrude(1){
        difference(){ 
            base();
            
            translate([5,6])
            scale([0.7,0.7])
            text("Stallman");
                       
            translate([41.5,0.75])
            scale([0.09,0.09,0.1])    
            import("stallman.dxf");
        }
        
        translate([64,1.3])
        rotate(90)
        scale([0.24,0.42])
        text("STALLMAN");
    } 
 
    translate([43, 0, 0])
    cube([16,20,0.25]);       
}

scale([1,1,2])
stallman();