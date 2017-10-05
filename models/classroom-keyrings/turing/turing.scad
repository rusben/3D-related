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
            
            translate([30.8,40])   
            scale([0.3,0.3,0.1])    
            import("turing.dxf");
        }
        translate([64.1,2.2])
        rotate(90)
        scale([0.30,0.44])
        text("TURING");
    }
}

translate([-30,-45]){
    turing();
    translate([0,22])
    stallman();
    translate([0,44])
    torvalds();
    translate([0,66])
    ada();
    translate([0,88])
    darwin();
}