module base(){
   difference(){ 
        square([65,20]);
        
        translate([3,10])
        circle([10], $fn=100);
        
        translate([60,1])
        square([4,18]);
   }
}

module turing(){
    linear_extrude(1){
        difference(){ 
            base();
            
            translate([5,6])
            scale([0.9,0.9])
            text("Turing");
            
            translate([42,1])   
            scale([0.105,0.105,0.1])    
            import("turing.dxf");
        }
        translate([64.1,2.2])
        rotate(90)
        scale([0.30,0.44])
        text("TURING");
    }
    
    
}


scale([1,1,2])
turing();

// fondo figura
translate([40,0,0])
cube([20,20,0.25]);
//import("turing.stl");