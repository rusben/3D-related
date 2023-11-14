module base(){
       difference(){ 
            square([65,20]);
            
            translate([3,10])
            circle([10], $fn=100);
            
            translate([60,1])
            square([4,18]);
       }
}
module escher(){
    translate([40,0,0]) { cube([20,20,0.5 ]); }
            
    linear_extrude(2){
        difference(){ 
            base();
            translate([5,6])
            scale([0.66,0.85])
            text("Escher");
            
            translate([40,1])
            scale([0.085,0.085,0.1])  
            import("escher-c.dxf");
        }
        translate([64,3])
        rotate(90)
        scale([0.24,0.42])
        text("ESCHER");
    }   
}

escher();

// https://imagetostl.com/convert/