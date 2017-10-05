module base(){
       difference(){ 

            square([65,20]);
            
            translate([3,10])
            circle([10], $fn=100);
            
            translate([60,1])
            square([4,18]);
       }
}
module bernerslee(){
    linear_extrude(2){
        difference(){ 
            base();
            translate([5,6])
            scale([0.50,0.85])
            text("Berners-Lee");
            
            translate([38.5,-9.5])
            scale([0.041,0.041,0.1])  
            import("bernerslee.dxf");
        }
        translate([64,1.3])
        rotate(90)
        scale([0.18,0.42])
        text("BERNERS-LEE");
    }   
}

bernerslee();