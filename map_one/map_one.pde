import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;

ArrayList<Boundary> boundaries;
Ball protagonist;

boolean l=false, r=false ,jump=false;
int testnum;

void setup(){
	size(1200,900);
	smooth();

	box2d = new Box2DProcessing(this);
	box2d.createWorld();
	box2d.setGravity(0,-20);

	boundaries = new ArrayList<Boundary>();
	boundaries.add(new Boundary(100,900,800,300,0));
	boundaries.add(new Boundary(1100,900,800,300,0));

	protagonist = new Ball(300,725,25);


}

void draw(){
	background(255);

	box2d.step();

	for(Boundary wall: boundaries){
		wall.display();
	}

	protagonist.display();
	
	// protagonist.action(1,0);
	// if( l == true ){
	// 	protagonist.move = true;
	// 	protagonist.action(-1,0);
	// }
	// if( r == true ){
	// 	protagonist.move = true;
	// 	protagonist.action(1,0);
	// }
	// if( jump == true ){
	// 	protagonist.move = true;
	// 	protagonist.action(0,100);
	// }

	// if( keyPressed == true ){
	// 	if( keyCode == RIGHT )
	// 		protagonist.action(1,0);
	// 	if( keyCode == LEFT )
	// 		protagonist.action(-1,0);
	// 	if( key == ' ' )
	// 		protagonist.action(0,100);
	// }


	// if( mousePressed == true ){
	// 	if( mouseButton == RIGHT )
	// 		protagonist.action(1,0);
	// 	if(mouseButton == LEFT)
	// 		protagonist.action(-1,0);
	// }

	fill(0);
	textSize(50);
	if( l == true )
		testnum = 10;
	else
		testnum = 0;
	text( testnum , 500,300);
	if( r == true )
		testnum = 10;
	else
		testnum = 0;
	text( testnum , 700,300 );
	if( jump == true )
		testnum = 10;
	else
		testnum = 0;
	text( testnum , 600,200 );
}


void KeyPressed(){
	
	// if( key == 'a' ){
	// 	l = true;
	// }
	// else if( key == 'd' ){
	// 	r = true;
	// }
	// else if( key == ' ' ){
		jump = true;
	// }
		
}

// void KeyReleased(){
// 	if( key == 'a' )
// 		l = false;
// 	if( key == 'd' )
// 		r = false;
// 	if( key == ' ' )
// 		jump = false;
// }