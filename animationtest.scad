//This is a temporary framework for learning how to animate artifacts.

//** Note that I need to be fluent in programming motion in openscad if I want to be any good at bringing plastic to life with a 3D printer.


//Goal of program is to show how to structure an animation inopenscad 

//gif of the motion to be reproduced can be seen here. (insert @sambashor tweet here.)


// Module variable overview. 
// function for moving an object from a start coordinate pair to end parameters for calling are as follows

//(startx, starty, endx, endy)

// the above parameters are to help mantain an extremely parametric program

//simple shape to start with "from scorchCAD" examples
module
 object1(){
	intersection(){
		cube(9,center=true);
		color("red");
		sphere(6);
		}	
	}

//You need to then call the module you made in order to render it...


//////////////////////////////////////////////////////////////////////////////////////RENDERS//////////////////////////////////////////////////////////////////////////////////////////
	

// BASE OBJECT IN BELOW TRANSFORMATION object1();



//////////////////////////////////////////////////////////////////////////////////////MOTION///////////////////////////////////////////////////////////////////////////////////////////




//***********************************************************//***************************Test****************************//***********************************************************


//The transformation I am looking for in the next snippet of code is a movement along the Z-axis of the object we desire to translate.

//default example animation code


//This operation takes our custom object1() and rotates it 360 degrees along the Z-axis while keeping it's origin point at default spawn
rotate([0,0,$t*360]) translate([0,0,0]) object1();


//This operation rotates the sphere around the origin along the Y-axis
rotate([0,$t*360,0]) translate([0,0,30]) sphere(5);

//This operation rotates the cube around the X-axis
rotate([$t*360,0,0]) translate([0,0,10]) cube(10);



