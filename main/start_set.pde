void set_start(){

	boundaries.clear();
	//left
	boundaries.add(new Boundary(-5,450,10,900,0,0,true) );
	//down
	boundaries.add(new Boundary(600,850,1200,100,0,0,true) );
	//right
	boundaries.add(new Boundary(1205,450,10,900,0,0,true) );
	//top
	boundaries.add(new Boundary(600,-5,1200,10,0,0,true) );
	//test
	boundaries.add(new Boundary(1100,700,200,10,PI/4,5,true) );
	boundaries.add(new Boundary(80,500,150,10,0,0,true) );
	boundaries.add(new Boundary(600,550,150,10,0,0,true) );
	boundaries.add(new Boundary(400,400,150,10,0,0,true) );
	boundaries.add(new Boundary(800,250,300,10,0,0,true) );
	boundaries.add(new Boundary(350,100,400,10,0,0,true) );
	boundaries.add(new Boundary(600,175,10,80,0,0,true) );
}