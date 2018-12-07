void map_one_object(){
	boundaries.clear();
	//left and left
	boundaries.add(new Boundary(-1210,450,10,900,0,0,true) );
	//0
	boundaries.add(new Boundary(-10,700,10,100,0,0,true) );
	boundaries.add(new Boundary(-10,250,10,600,0,0,true) );
	//right
	boundaries.add(new Boundary(3590,700,10,100,0,0,true) );
	boundaries.add(new Boundary(3590,250,10,600,0,0,true) );
	//top
	boundaries.add(new Boundary(1200,-10,5000,10,0,0,true) );
	//flood
	boundaries.add(new Boundary(0,900,800,300,0,0,true) );
	boundaries.add(new Boundary(800,900,400,300,0,0,true) );
	boundaries.add(new Boundary(2200,900,2000,170,0,0,true) );
	boundaries.add(new Boundary(3600,900,400,300,0,0,true) );
	//invisible
	boolean test = false;
	boundaries.add(new Boundary(250,200,10,400,0,5,test) );
	boundaries.add(new Boundary(400,640,120,10,0,0,test) );
	boundaries.add(new Boundary(600,640,120,10,0,0,test) );
	boundaries.add(new Boundary(840,550,150,10,0,0,test) );
	boundaries.add(new Boundary(3035,565,10,10,-PI/5,5,test) );
	//visible
	boundaries.add(new Boundary(400,400,800,10,0,0,true) );
	boundaries.add(new Boundary(1200,500,300,10,0,0,true) );
	boundaries.add(new Boundary(2850,450,450,10,-PI/5,0,true) );
	boundaries.add(new Boundary(3250,630,180,10,0,0,true) );
	boundaries.add(new Boundary(3300,100,200,10,PI/4,0,true) );//3200,200
	boundaries.add(new Boundary(3100,300,200,10,PI/4,0,true) );
	boundaries.add(new Boundary(3500,500,150,10,PI/4,5,true) );
	//end visible
	boundaries.add(new Boundary(-1100,410,180,10,0,0,true) );
	boundaries.add(new Boundary(-900,520,180,10,0,0,true) );
	boundaries.add(new Boundary(-700,850,180,10,0,0,true) );
	boundaries.add(new Boundary(-700,410,180,10,0,0,true) );
	boundaries.add(new Boundary(-700,190,180,10,0,0,true) );
	boundaries.add(new Boundary(-500,300,180,10,0,0,true) );
	boundaries.add(new Boundary(-500,740,180,10,0,0,true) );
	//end invisible
	boundaries.add(new Boundary(-1100,900,180,10,0,5,false) );
	//for windmills
	boundaries.add(new Boundary(2000,400,1000,10,0,5,true) );
	boundaries.add(new Boundary(2000,800,1000,10,0,5,true) );
	boundaries.add(new Boundary(2650,600,10,300,0,5,true) );
	// boundaries.add(new Boundary(1350,200,10,300,0,5,true) );
	//--------------------------------------------------------
	//left
	windmills.add(new Windmill(600,200,300,0,0) );
	windmills.add(new Windmill(1550,580,300,-10,50000) );
	//right
	windmills.add(new Windmill(2450,580,300,-10,50000) );
	//mid
	windmills.add(new Windmill(1760,700,70,10,500) );
	windmills.add(new Windmill(1860,700,70,-10,500) );
	windmills.add(new Windmill(1960,700,70,10,500) );
	windmills.add(new Windmill(2060,700,70,-10,500) );
	windmills.add(new Windmill(2160,700,70,10,500) );
	windmills.add(new Windmill(2260,700,70,-10,500) );

	windmills.add(new Windmill(1810,600,70,10,500) );
	windmills.add(new Windmill(1910,600,70,-10,500) );
	windmills.add(new Windmill(2010,600,70,10,500) );
	windmills.add(new Windmill(2110,600,70,-10,500) );
	windmills.add(new Windmill(2210,600,70,10,500) );

	windmills.add(new Windmill(1760,500,70,-10,500) );
	windmills.add(new Windmill(1860,500,70,10,500) );
	windmills.add(new Windmill(1960,500,70,-10,500) );
	windmills.add(new Windmill(2060,500,70,10,500) );
	windmills.add(new Windmill(2160,500,70,-10,500) );
	windmills.add(new Windmill(2260,500,70,10,500) );

	windmills.add(new Windmill(1500,300,70,-10,500) );
	windmills.add(new Windmill(1600,300,70,10,500) );
	windmills.add(new Windmill(1700,300,70,-10,500) );
	windmills.add(new Windmill(1800,300,70,10,500) );
	windmills.add(new Windmill(1900,300,70,-10,500) );
	windmills.add(new Windmill(2000,300,70,10,500) );
	windmills.add(new Windmill(2100,300,70,-10,500) );
	windmills.add(new Windmill(2200,300,70,10,500) );
	windmills.add(new Windmill(2300,300,70,-10,500) );
	windmills.add(new Windmill(2400,300,70,10,500) );
	windmills.add(new Windmill(2500,300,70,-10,500) );
}

void trap_one(){
	if( pos.x < 350 || pos.x > 650 || pos.y < 400 ){
		noStroke();
		fill(182);
		rect(500,900,300,300);
		fill(0);
		stroke(1);
		line(300,750,700,750);
	}

	if( pos.x < 750 || pos.x > 850 || pos.y > 400 ){
		fill(182);
		rect(800,200,10,410);
		noStroke();
		rect(795,400,10,10);
		stroke(1);
		fill(0);
		line(780,405,805,405);
		line(795,395,770,395);
	}
	
	fill(182);
	rect(-1100,630,180,10);
	rect(-900,740,180,10);
	rect(-900,300,180,10);
	rect(-700,630,180,10);
	rect(-500,520,180,10);
	
}
