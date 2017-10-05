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
            scale([1.1,0.85])
            text("Tesla");
            
            translate([40,-9])
            scale([0.040,0.040,0.1])  
            import("tesla.dxf");
        }
        translate([64,2.6])
        rotate(90)
        scale([0.34,0.42])
        text("TESLA");
    }   
}

snowden();