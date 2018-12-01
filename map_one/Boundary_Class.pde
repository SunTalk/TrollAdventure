class Boundary {

	// A boundary is a simple rectangle with x,y,width,and height
	float x;
	float y;
	float w;
	float h;
	float restitution;
	boolean visible;
	// But we also have to make a body for box2d to know about it
	Body b;

	Boundary(float x_,float y_, float w_, float h_, float a,float restitution_,boolean visible_) {
		x = x_;
		y = y_;
		w = w_;
		h = h_;
		restitution = restitution_;
		visible = visible_;
	
		// Define the polygon
		PolygonShape sd = new PolygonShape();
		// Figure out the box2d coordinates
		float box2dW = box2d.scalarPixelsToWorld(w/2);
		float box2dH = box2d.scalarPixelsToWorld(h/2);
		// We're just a box
		sd.setAsBox(box2dW, box2dH);
	
	
		// Create the body
		BodyDef bd = new BodyDef();
		bd.type = BodyType.STATIC;
		bd.angle = a;
		bd.position.set(box2d.coordPixelsToWorld(x,y));
		b = box2d.createBody(bd);
		FixtureDef fd = new FixtureDef();
		fd.shape=sd;
		fd.restitution=restitution;
		b.createFixture(fd);
	}

	// Draw the boundary, it doesn't move so we don't have to ask the Body for location
	void display() {
		if( visible ){
			if(restitution<1)	
				fill(182);
			else
				fill(0,0,255);
			stroke(0);
			strokeWeight(5);
			rectMode(CENTER);
			float a = b.getAngle();
			pushMatrix();
			translate(x,y);
			rotate(-a);
			rect(0,0,w,h);
			popMatrix();
		}
	}

}