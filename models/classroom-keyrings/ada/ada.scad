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
            
            translate([62.8,59])   
            scale([0.47,0.47,0.1])    
            import("ada.dxf");
        }
        translate([64,6.5])
        rotate(90)
        scale([0.24,0.42])
        text("ADA");
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