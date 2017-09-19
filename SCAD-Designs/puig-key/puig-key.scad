/* 
    puig-key is a 3D key model from Institut Puig Castellar
    
    Copyright (C) 2016  Institut Puig Castellar

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

// START ROUNDED CUBE

module roundedcube(xdim ,ydim ,zdim,rdim){
hull(){
translate([rdim,rdim,rdim])sphere(r=rdim);
translate([xdim-rdim,rdim,rdim])sphere(r=rdim);
translate([rdim,ydim-rdim,rdim])sphere(r=rdim);
translate([xdim-rdim,ydim-rdim,rdim])sphere(r=rdim);
translate([rdim,rdim,zdim-rdim])sphere(r=rdim);
translate([xdim-rdim,rdim,zdim-rdim])sphere(r=rdim);
translate([rdim,ydim-rdim,zdim-rdim])sphere(r=rdim);
translate([xdim-rdim,ydim-rdim,zdim-rdim])sphere(r=rdim);    
}
}

// END ROUNDED CUBE

$LONG = 50;
$WIDTH = 15;
$HEIGHT = 2.5;

$SMALL_LONG = 16;
$SMALL_WIDTH = 26;

$MINILINE_WIDTH = 2;

// minkowski(a) {
// cube([25,10,0.5], center = true);
// rounded corners
//  sphere(2);
// }
// minkowski();


// Mayor o menor triangulación de la esfera.
$fn = 100;
// 4.5 cm x 1 cm
module puigKey()
{

union() {
	// large
  	//cube([$LONG,$WIDTH,$HEIGHT], center = true);
	translate([-($LONG / 2), -($WIDTH / 2), -($HEIGHT/2)])
	roundedcube($LONG,$WIDTH,$HEIGHT,1);

	// line
	translate([-(($LONG - 11) / 2), -$MINILINE_WIDTH / 2, 0])
	//cube([$LONG - 3, $MINILINE_WIDTH, $HEIGHT + 2], center = true);

	roundedcube($LONG - 3, $MINILINE_WIDTH, $HEIGHT,1);

	// miniline
	
	//translate([-24, -$MINILINE_WIDTH / 2, 0])
translate([-$LONG/2,-$MINILINE_WIDTH/2,0])
	roundedcube(4, $MINILINE_WIDTH, $HEIGHT,1);


difference() {

	// small	
	translate([($LONG / 2) - 1,-$SMALL_WIDTH/2,-($HEIGHT/2)])
//	cube([$SMALL_LONG,$SMALL_WIDTH,$HEIGHT], center = true);
	roundedcube($SMALL_LONG, $SMALL_WIDTH, $HEIGHT,1);


	// hole
	translate([($LONG / 2) + ($SMALL_LONG / 2),0,-5])
	cylinder(r=3,h=10);
}

}	
}

puigKey();
