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

	if( keyPressed == true ){
		if( keyCode == RIGHT ){
			protagonist.move = true;
			protagonist.action(15);
			
		}
		if( keyCode == LEFT ){
			protagonist.move = true;
			protagonist.action(-15);
		}
		if( keyCode == UP || key == ' ' ){
			if( millis()-protagonist.njtime > 1300 ){
				protagonist.jmp = true;
			}
			protagonist.jump(1000);
		}
		if( key == 's' || key == 'S' ){
			ContactEdge stop = protagonist.body.getContactList();
			for(;stop!=null;stop=stop.next)
				protagonist.tp(pos.x,pos.y);
		}
		
	}
	else{
		protagonist.move = false;
		protagonist.action(0);
	}

	if( protagonist.reStart() ){
		setup();
	}

	for(Windmill wind: windmills){
		wind.display();
	}

	for(Boundary wall: boundaries){
		ContactEdge bounvis = wall.b.getContactList();
		for(;bounvis!=null;bounvis=bounvis.next)
			if( bounvis.contact.isTouching() == true )
				wall.vis();
		wall.display();
	}

	trap_one();

	protagonist.display();
	if( pos.x > 3600 )
		protagonist.tp(30,570);

}
