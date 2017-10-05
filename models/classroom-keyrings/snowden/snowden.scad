module base(){
       difference(){ 

            square([65,20]);
            
            translate([3,10])
            circle([10], $fn=100);
            
            translate([60,1])
            square([4,18]);
       }
}
module snowden(){
    linear_extrude(2){
        difference(){ 
            base();
            translate([5,6])
            scale([0.66,0.85])
            text("Snowden");
            
            translate([42,-4])
            scale([0.034,0.034,0.1])  
            import("snowden.dxf");
        }
        translate([64,1.6])
        rotate(90)
        scale([0.24,0.42])
        text("SNOWDEN");
    }   
}

snowden();