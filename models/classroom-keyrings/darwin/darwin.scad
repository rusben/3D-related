module base(){
       difference(){ 

            square([65,20]);
            
            translate([3,10])
            circle([10], $fn=100);
            
            translate([60,1])
            square([4,18]);
       }
}

module darwin(){
    // fondo figura
    translate([40,0,0])
    cube([20,20,0.25]);
    
    linear_extrude(1){
        difference(){ 
            base();
            translate([5,6])
            scale([0.85,0.85])
            text("Darwin");
            
            translate([41,1])   
            scale([0.0875,0.0875,0.1])    
            import("darwin.dxf");
        }
        translate([64,3.4])
        rotate(90)
        scale([0.24,0.42])
        text("DARWIN");
    }   
}

//translate([-30,-45]){
//    turing();
//    translate([0,22])
//    stallman();
//    translate([0,44])
//    torvalds();
//    translate([0,66])
//    ada();
//    translate([0,88])
    
    scale([1, 1, 2])
    darwin();
//}