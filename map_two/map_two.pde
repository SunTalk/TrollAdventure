import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.dynamics.contacts.*;

Box2DProcessing box2d;

ArrayList<Boundary> boundaries;
Ball ooxx;

boolean l=true, r=false ,jump=false;

float _x, _y;

int diedCount = 0;
int lying = 1;
boolean check = false;

void setup()
{
	size(1200, 900);
	smooth();

	box2d = new Box2DProcessing(this);
	box2d.createWorld();
	box2d.setGravity(0,-80);

	boundaries = new ArrayList<Boundary>();

	map_two_boundary();

	ooxx = new Ball(300,720,25);
	_x = _y = 0;

	check = false;
	lying = 1;
}

void draw()
{
	background(255);

	box2d.step();

	Vec2 pos = box2d.getBodyPixelCoord(ooxx.body);
	
	if(pos.x > 3600)
	{
		ooxx.teleport(5, 724);
		lying++;

		if(lying == 1)
			check = false;
		else
			check = true;
	}
	else if(pos.x < 0)
	{
		ooxx.teleport(3595, 724);
		lying--;
	}

	if( pos.x > 0 )
		_x = 0;

	if( pos.x < -50 )
		_x = 1200;

	if( (pos.x-_x) > 600 )
		_x = -(pos.x-600);

	if( _x < -2400 )
		_x = -2400;

	if( pos.y > 1000)
		_y = -900;
	else
		_y = 0;

	translate(_x,_y);

	fill(0);
	textSize(100);
	if(check == false)
	{
		if(diedCount == 0)
		{
			text("Welcome", 10, 100);
			text("Infinite Abyss!!!", 10, 200);
			text("You Died " + diedCount + " Times", 10, 400);
		}
		else
			text("You Died " + diedCount + " Times", 10, 200);
		
	}
	text("Area: " + lying, 2500, 400);

	textSize(80);
	text("<-- GO", 400, 1200);
	text("<-- GO", 400, 1500);

	if( keyPressed == true )
	{
		if( keyCode == RIGHT )
		{
			ooxx.move = true;
			ooxx.action(15);
		}
		if( keyCode == LEFT )
		{
			ooxx.move = true;
			ooxx.action(-15);
		}
		if( key == ' ' )
		{
			if( millis()-ooxx.njtime > 1300 )
				ooxx.jmp = true;

			ooxx.jump();
		}
		
	}

	// reborn
	if(ooxx.reStart())
	{
		diedCount++;
		setup();
	}

	for(Boundary wall: boundaries)
		wall.display();

	fill(0);
	textSize(40);
	text("WIN", 1500, 1700);

	if(pos.x > 1000 && pos.x < 2000 && pos.y > 1500);
	else
		disapear();

	ooxx.display();
}
