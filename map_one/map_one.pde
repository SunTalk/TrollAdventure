import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;

Box2DProcessing box2d;

ArrayList<Boundary> boundaries;
ArrayList<Windmill> windmills;
Ball protagonist;

boolean l=true, r=false ,jump=false;
int testnum;

float now_x,now_y;
Vec2 pos;

void setup(){
	size(1200,900);
	smooth();

	box2d = new Box2DProcessing(this);
	box2d.createWorld();
	box2d.setGravity(0,-100);

	boundaries = new ArrayList<Boundary>();
	windmills = new ArrayList<Windmill>(); 
	map_one_object();

	protagonist = new Ball(150,720,25);//150,720
	now_x = now_y = 0;
}



void draw(){
	background(255);

	box2d.step();

	pos = box2d.getBodyPixelCoord( protagonist.body);
	
	
	if( pos.x > 0 ){
		now_x = 0;
	}
	if( pos.x < -50 ){
		now_x = 1200;
	}
	if( (pos.x-now_x) > 600 ){
		now_x = -(pos.x-600);
	}
	if( now_x < -2400 ){
		now_x = -2400;
	}

	translate(now_x,now_y);

	// fill(0);
	// textSize(20);
	// text(pos.x,1000,200);
	// text(now_x,1000,300);

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

	for(Windmill wind: windmills){
		wind.display();
	}

	for(Boundary wall: boundaries){
		wall.display();
	}

	trap_one();

	protagonist.display();

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

// void KeyReleased(){
// 	if( key == 'a' )
// 		l = false;
// 	if( key == 'd' )
// 		r = false;
// 	if( key == ' ' )
// 		jump = false;
// }