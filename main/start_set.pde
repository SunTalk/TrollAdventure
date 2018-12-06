void set_start(){

	boundaries.clear();
	//left
	boundaries.add(new Boundary(-5,450,10,900,0,0,true) );
	//down
	boundaries.add(new Boundary(600,905,1200,10,0,0,true) );
	//right
	boundaries.add(new Boundary(1205,450,10,900,0,0,true) );
	//top
	boundaries.add(new Boundary(600,-5,1200,10,0,0,true) );

}