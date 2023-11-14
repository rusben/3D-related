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
            
            translate([33,0.25])
            scale([0.175,0.175,0.1])  
            import("bernerslee.dxf");
        }
        translate([64,1.3])
        rotate(90)
        scale([0.18,0.42])
        text("BERNERS-LEE");
   }
      
}

// fondo figura
translate([42,0,0]) 
cube([18,20,0.5]);
bernerslee();
