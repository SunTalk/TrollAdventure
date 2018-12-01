void map_one_boundary(){
	//left and left
	boundaries.add(new Boundary(-1210,450,10,900,0,0,true) );
	//mid
	boundaries.add(new Boundary(-10,700,10,100,0,0,true) );
	boundaries.add(new Boundary(-10,250,10,600,0,0,true) );
	//right
	boundaries.add(new Boundary(3610,450,10,900,0,5,true) );
	//top
	boundaries.add(new Boundary(600,-10,1200,10,0,10,true) );
	//flood
	boundaries.add(new Boundary(100,890,800,300,0,-1,true) );
	boundaries.add(new Boundary(900,900,400,300,0,-1,true) );
	boundaries.add(new Boundary(2700,900,2000,300,0,-1,true) );
	//wall
	boundaries.add(new Boundary(700,640,120,10,0,0,false) );
	boundaries.add(new Boundary(500,640,120,10,0,0,false) );
}