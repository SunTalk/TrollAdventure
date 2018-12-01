import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;

ArrayList<Boundary> boundaries;
Ball protagonist;

boolean l=true, r=false ,jump=false;
int testnum;

void setup(){
	size(1200,900);
	smooth();

	box2d = new Box2DProcessing(this);
	box2d.createWorld();
	box2d.setGravity(0,-100);

	boundaries = new ArrayList<Boundary>();

	boundaries.add(new Boundary(-10,450,10,900,0,0,false) );//left
	boundaries.add(new Boundary(1210,450,10,900,0,5,false) );//right
	boundaries.add(new Boundary(600,-10,1200,10,0,10,false) );//top
	//flood
	boundaries.add(new Boundary(100,890,800,300,0,0,true) );
	boundaries.add(new Boundary(1100,900,800,300,0,0,true) );
	//wall
	boundaries.add(new Boundary(700,640,120,10,0,0,false) );
	boundaries.add(new Boundary(500,640,120,10,0,0,false) );

	protagonist = new Ball(300,720,25);

}

void draw(){
	background(255);

	box2d.step();

	for(Boundary wall: boundaries){
		wall.display();
	}

	protagonist.display();

	if( keyPressed == true ){
		if( keyCode == RIGHT ){
			protagonist.move = true;
			protagonist.action(15);
		}
		if( keyCode == LEFT ){
			protagonist.move = true;
			protagonist.action(-15);
		}
		if( key == ' ' ){
			if( millis()-protagonist.njtime > 1300 ){
				protagonist.jmp = true;
			}
			protagonist.jump();
		}
		
	}

	if( protagonist.reStart() ){
		setup();
	}

}


void KeyPressed() {
	
	// if( key == 'a' ){
	// 	l = true;
	// }
	// else if( key == 'd' ){
	// 	r = true;
	// }
	if( key == ' ' ){
		jump = true;
	}
		
}

void MousePressed() {
	
	if( mouseButton == LEFT )
		jump = true;
}

// void KeyReleased(){
// 	if( key == 'a' )
// 		l = false;
// 	if( key == 'd' )
// 		r = false;
// 	if( key == ' ' )
// 		jump = false;
// }