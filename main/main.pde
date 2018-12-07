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

boolean _l_, _r_,_jump_,_stop_,win=false;

float now_x,now_y;
Vec2 pos;

float jp_time,sp_time;

int gamemode = 0;

PImage pic_star;
PImage pic_home;
int star_num;
int[] stars = new int[3];


PFont start_interface;
PFont origin_font;

void setup(){

	start_interface = createFont("KarmaticArcade.otf",16);
	origin_font = createFont("Regular.ttf",16);

	size(1200,900);
	smooth();

	box2d = new Box2DProcessing(this);
	box2d.createWorld();
	box2d.setGravity(0,-100);

	boundaries = new ArrayList<Boundary>();
	windmills = new ArrayList<Windmill>(); 

	protagonist = new Ball(150,720,25);//150,720
	now_x = now_y = 0;

	pic_star = loadImage("star.png");
	pic_home = loadImage("home.png");
	for(int i = 0 ; i < 3 ; i++ )
		stars[i] = 1;
	star_num = 0;

	if( gamemode == 0 ){
		set_start();
	}
	else if( gamemode == 1 ){
		map_one_object();
	}
	_l_=false;
	_r_=false ;
	_jump_=false;
	_stop_=false;
	// win=true;
}

void draw(){

	background(255);

	box2d.step();

	pos = box2d.getBodyPixelCoord( protagonist.body);
	

	
//---------------------------------------------
	if( gamemode == 1 ){
		vis_one();
	}

	translate(now_x,now_y);
//---------------------------------------------
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

//---------------------------------------------
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

	if( gamemode == 0 ){
		draw_start();
	}
	else if( gamemode == 5 ){
		draw_start();
		draw_choice();
	}
	else if( gamemode == 1 ){
		draw_one();
		trap_one();
	}

	if( win == false )
		protagonist.display();

	if( pos.x > 3600 ){
		protagonist.stp = true;
		protagonist.tp(30,570);
	}
//---------------------------------------------
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

//---------------------------------------------
	
	if( win == true ){
		fill(255);
		stroke(1);
		strokeWeight(5);
		rect(-now_x+600,350,700,500);
		rect(-now_x+600,500,200,80);
		fill(0);
		textSize(150);
		text("YOU WIN !!!",-now_x+370,330);
		textSize(80);
		text("HOME", -now_x+540,530);
	}
	textSize(50);
	fill(255,0,0);
	text(( mouseX - 600 )*( mouseX - 600 ) + ( mouseY - 550 )*( mouseY - 550 ),mouseX,mouseY);

}

