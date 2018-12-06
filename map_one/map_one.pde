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

boolean _l_=false, _r_=false ,_jump_=false,_stop_;

float now_x,now_y;
Vec2 pos;

float jp_time,sp_time;

PImage pic_star;
PImage pic_home;
int star_num = 0;
int[] stars = new int[3];

void setup(){
	size(1200,900);
	smooth();

	box2d = new Box2DProcessing(this);
	box2d.createWorld();
	box2d.setGravity(0,-100);

	boundaries = new ArrayList<Boundary>();
	windmills = new ArrayList<Windmill>(); 
	map_one_object();

	pic_star = loadImage("star.png");
	pic_home = loadImage("home.png");
	for(int i = 0 ; i < 3 ; i++ )
		stars[i] = 1;
	star_num = 0;

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

	if( _r_ == true ){
		protagonist.move = true;
		protagonist.action(15);
		
	}
	if( _l_ == true ){
		protagonist.move = true;
		protagonist.action(-15);
	}
	if( _jump_ == true ){
		if( millis()-protagonist.njtime > 1500 ){
			protagonist.jmp = true;
			protagonist.jump(1000);
		}
	}
	if( _stop_ == true ){
		if( millis()-protagonist.nstime > 3000 ){
			protagonist.stp = true;
		}
		ContactEdge stop = protagonist.body.getContactList();
		for(;stop!=null;stop=stop.next)
			protagonist.tp(pos.x,pos.y);
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
	if( pos.x > 3600 ){
		protagonist.stp = true;
		protagonist.tp(30,570);
	}

	jp_time = 1500 - millis() + protagonist.njtime;
	if( jp_time < 0 )
		jp_time = 0;
	jp_time = jp_time/1000;

	sp_time = 3000 - millis() + protagonist.nstime;
	if( sp_time < 0 )
		sp_time = 0;
	sp_time = sp_time/1000;

	textSize(40);
	fill(0);
	text("Jump : " + jp_time, -now_x+10 , 850);
	text("Stop : " + sp_time, -now_x+10 , 890);

}

void keyPressed(){
	if( keyCode == RIGHT ){
		_r_ = true;
	}
	if( keyCode == LEFT ){
		_l_= true;
	}
	if( keyCode == UP || key == ' ' ){
		_jump_ = true;
	}
	if( key == 's' || key == 'S' ){
		_stop_ = true;
	}
}

void keyReleased(){
	if( keyCode == RIGHT ){
		_r_ = false;
	}	
	if( keyCode == LEFT ){
		_l_ = false;
	}
	if( keyCode == UP || key == ' ' ){
		_jump_ = false;
	}
	if( key == 's' || key == 'S' ){
		_stop_ = false;
	}
}
