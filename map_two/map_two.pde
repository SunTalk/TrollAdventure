import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;

ArrayList<Boundary> boundaries;
Ball ooxx;

boolean l=true, r=false ,jump=false;

float _x, _y;

void setup()
{
	size(1200, 900);
	smooth();

	box2d = new Box2DProcessing(this);
	box2d.createWorld();
	box2d.setGravity(0,-80);

	boundaries = new ArrayList<Boundary>();

	map_one_boundary();

	ooxx = new Ball(300,720,25);
	_x = _y = 0;
}

void draw()
{
	background(255);

	box2d.step();

	Vec2 pos = box2d.getBodyPixelCoord(ooxx.body);
	
	text("x: " + pos.x, pos.x + 25, pos.y-25);
	text("y: " + pos.y, pos.x + 25, pos.y-10);
	
	
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

	translate(_x,_y);

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
		setup();

	for(Boundary wall: boundaries)
		wall.display();

	ooxx.display();
}
