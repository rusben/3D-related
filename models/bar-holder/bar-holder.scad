$BRICK_SIZE = 20;

$TUBE_DIAMETER = 17;
$WIDTH_OUT_TUBE = $BRICK_SIZE-$TUBE_DIAMETER;
$fn=64;

module brick(x,y,z) {
    translate([x*$BRICK_SIZE,y*$BRICK_SIZE,z*$BRICK_SIZE]) {
        cube($BRICK_SIZE);
    }   
}

module cover_brick(x,y,z) {
    translate([x*$BRICK_SIZE,y*$BRICK_SIZE,z*$BRICK_SIZE]) {
        cube($BRICK_SIZE+3);
    }   
}

module intube(height) {
        cylinder(r=$TUBE_DIAMETER/2, h=height);
}

module outtube(height) {
        cylinder(r=$TUBE_DIAMETER/2+$WIDTH_OUT_TUBE, h=height);
}


module underbar() {
    brick(-0.5,-0.5,0);
    brick(-0.5,-0.5,1);
    
    brick(-0.5,-1.5,0);
    brick(-0.5,-1.5,1);
    
    brick(-0.5,0.5,0);
    brick(-0.5,0.5,1);
}

module b1() {
    difference() {
        union() {
            brick(0.5,-0.5,0);
            brick(0.5,-0.5,1);
            brick(0.5,-0.5,1.5);

            brick(-0.5,-0.5,2);

            brick(-1.5,-0.5,0);
            brick(-1.5,-0.5,1);
            brick(-1.5,-0.5,2);
        }
        

    }
}   

module b2() {
    difference() {
        union() {
            brick(0.5,-1,0.5);
            brick(0.5,-1,1);
            brick(0.5,-1,2);

            brick(-0.5,-1,2);

            brick(-1.5,-1,0.5);
            brick(-1.5,-1,1);
            brick(-1.5,-1,2);
        }

    }
}   


module b3() {
    difference() {
        union() {
            brick(0.5,0,0.5);
            brick(0.5,0,1);
            brick(0.5,0,2);

            brick(-0.5,0,2);

            brick(-1.5,0,0.5);
            brick(-1.5,0,1);
            brick(-1.5,0,2);
        }
        

    }
}   


module holder(rotation) {
  translate([-$BRICK_SIZE*2, 0, $BRICK_SIZE*2]) {
        rotate(rotation){
                outtube(80);
        }
    }
}


module holderin(rotation) {
  translate([-$BRICK_SIZE*2, 0, $BRICK_SIZE*2]) {
        rotate(rotation){
                intube(80);
        }
    }
}




difference() {
    hull() {
        b1();
        b2();
        b3();
        holder([90,0,90]);
    }
    
    union(){
        holderin([90,0,90]);
        underbar();
    }
}

// pared interior para que no escape la barra
difference() {
scale([1.25,1,1]) brick(-0.5,-0.5,1.5);
brick(-0.5,-0.5,1);
}


