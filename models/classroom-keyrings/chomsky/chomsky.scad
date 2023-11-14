module base(){
       difference(){ 

            square([65,20]);
            
            translate([3,10])
            circle([10], $fn=100);
            
            translate([60,1])
            square([4,18]);
       }
}
module chomsky(){
            translate([45,0,0]) { cube([15,20,0.5 ]); }

    linear_extrude(2){
        difference(){ 
            base();
            translate([5,6])
            scale([0.66,0.85])
            text("Chomsky");
            
            translate([44,1])
            scale([0.1,0.1,0.1])  
            import("chomsky.dxf");
        }
        translate([64,1.6])
        rotate(90)
        scale([0.24,0.42])
        text("CHOMSKY");
    }   
}

chomsky();