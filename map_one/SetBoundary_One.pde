void map_one_object(){
	//left and left
	boundaries.add(new Boundary(-1210,450,10,900,0,0,true) );
	//0
	boundaries.add(new Boundary(-10,700,10,100,0,0,true) );
	boundaries.add(new Boundary(-10,250,10,600,0,0,true) );
	//right
	boundaries.add(new Boundary(3610,450,10,900,0,5,true) );
	//top
	boundaries.add(new Boundary(1200,-10,5000,10,0,5,true) );
	//flood
	boundaries.add(new Boundary(0,900,800,300,0,0,true) );
	boundaries.add(new Boundary(800,900,400,300,0,0,true) );
	boundaries.add(new Boundary(2400,900,2200,100,0,0,true) );
	//invisible
	boolean test = true;
	boundaries.add(new Boundary(400,640,120,10,0,0,test) );
	boundaries.add(new Boundary(600,640,120,10,0,0,test) );
	boundaries.add(new Boundary(840,550,150,10,0,0,test) );
	boundaries.add(new Boundary(1200,500,300,10,0,0,test) );
	//visible
	boundaries.add(new Boundary(2000,400,1000,10,0,5,true) );
	boundaries.add(new Boundary(2000,800,1000,10,0,5,true) );
	boundaries.add(new Boundary(2650,600,10,300,0,5,true) );
	boundaries.add(new Boundary(1350,200,10,300,0,5,true) );
	//--------------------------------------------------------
	//left
	windmills.add(new Windmill(1550,580,300,-10,5000) );
	//right
	windmills.add(new Windmill(2450,580,300,10,5000) );
	//mid
	windmills.add(new Windmill(1760,700,70,10,5000) );
	windmills.add(new Windmill(1860,700,70,10,5000) );
	windmills.add(new Windmill(1960,700,70,10,5000) );
	windmills.add(new Windmill(2060,700,70,10,5000) );
	windmills.add(new Windmill(2160,700,70,10,5000) );
	windmills.add(new Windmill(2260,700,70,10,5000) );

	windmills.add(new Windmill(1810,600,70,-10,5000) );
	windmills.add(new Windmill(1910,600,70,-10,5000) );
	windmills.add(new Windmill(2010,600,70,-10,5000) );
	windmills.add(new Windmill(2110,600,70,-10,5000) );
	windmills.add(new Windmill(2210,600,70,-10,5000) );

	windmills.add(new Windmill(1760,500,70,10,5000) );
	windmills.add(new Windmill(1860,500,70,10,5000) );
	windmills.add(new Windmill(1960,500,70,10,5000) );
	windmills.add(new Windmill(2060,500,70,10,5000) );
	windmills.add(new Windmill(2160,500,70,10,5000) );
	windmills.add(new Windmill(2260,500,70,10,5000) );

	windmills.add(new Windmill(1500,300,70,-10,5000) );
	windmills.add(new Windmill(1600,300,70,10,5000) );
	windmills.add(new Windmill(1700,300,70,10,5000) );
	windmills.add(new Windmill(1800,300,70,10,5000) );
	windmills.add(new Windmill(1900,300,70,10,5000) );
	windmills.add(new Windmill(2000,300,70,10,5000) );
	windmills.add(new Windmill(2100,300,70,10,5000) );
	windmills.add(new Windmill(2200,300,70,10,5000) );
	windmills.add(new Windmill(2300,300,70,10,5000) );
	windmills.add(new Windmill(2400,300,70,10,5000) );
	windmills.add(new Windmill(2500,300,70,10,5000) );
}


