class Ball {

	// We need to keep track of a Body and a radius
	Body body;
	float r;
	boolean move = false;
	boolean jmp = false;
	float njtime = -1000;

	Ball(float x, float y, float r_) {
		r = r_;
		// This function puts the Ball in the Box2d world
		makeBody(x,y,r,0);
	}

	// This function removes the Ball from the box2d world
	void killBody() {
		box2d.destroyBody(body);
	}

	void action(float x){
		if( move == true ){
			body.applyLinearImpulse(new Vec2(x,0),body.getPosition(),true);
			move = false;
		}
	}
	void jump(float y){
		if( jmp == true ){
			body.applyLinearImpulse(new Vec2(0,y),body.getPosition(),true);
			njtime = millis();
			jmp = false;
		}
	}
	void tp(float x, float y){
		float a = body.getAngle();
		killBody();
		makeBody(x,y,25,a);
	}

	// Is the Ball ready for deletion?
	boolean reStart() {
		// Let's find the screen position of the Ball
		Vec2 pos = box2d.getBodyPixelCoord(body);
		// Is it off the bottom of the screen?
		if (pos.y > height+r*2) {
			killBody();
			return true;
		}
		return false;
	}

	// 
	void display() {
		// We look at each body and get its screen position
		Vec2 pos = box2d.getBodyPixelCoord(body);
		// Get its angle of rotation
		float a = body.getAngle();
		pushMatrix();
		translate(pos.x,pos.y);
		rotate(-a);
		fill(175);
		stroke(0);
		strokeWeight(1);
		ellipse(0,0,r*2,r*2);
		// Let's add a line so we can see the rotation
		// line(0,0,r,0);
		fill(255);
		ellipse(r/2,-8,r/2,r/2);
		ellipse(-r/2,-8,r/2,r/2);
		fill(0);
		ellipse(r/2,-8,r/5,r/5);
		ellipse(-r/2,-8,r/5,r/5);
		fill(255,0,0);
		ellipse(-8,3,r/2,r/5);

		popMatrix();
	}

	// Here's our function that adds the Ball to the Box2D world
	void makeBody(float x, float y, float r, float a) {
		// Define a body
		BodyDef bd = new BodyDef();
		// Set its position
		bd.position = box2d.coordPixelsToWorld(x,y);
		bd.type = BodyType.DYNAMIC;
		bd.angle = a;
		body = box2d.world.createBody(bd);

		// Make the body's shape a circle
		CircleShape cs = new CircleShape();
		cs.m_radius = box2d.scalarPixelsToWorld(r);
		
		FixtureDef fd = new FixtureDef();
		fd.shape = cs;
		// Parameters that affect physics
		
		fd.density = 1;
		fd.friction = 10000;
		fd.restitution = 0;
		
		// Attach fixture to body
		body.createFixture(fd);

		// Give it a random initial velocity (and angular velocity)
		// body.setLinearVelocity(new Vec2(random(-10f,10f),random(5f,10f)));
		// body.setAngularVelocity(random(-10,10));
	}



}