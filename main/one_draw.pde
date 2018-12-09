void draw_one(){
	fill(0);
	image(pic_home,-now_x+1100,0, 100, 100);//home
	image(pic_star,-now_x+500,0,100,100);//star
	textSize(80);
	text("X "+star_num ,-now_x+600,80);

	if( pos.x > 3600 ){
		protagonist.stp = true;
		protagonist.tp(30,570,true);
	}

	if( stars[0] == 1 ){
		image(pic_star,-1000,100,100,100);
	}
	if( stars[1] == 1 ){
		image(pic_star,2000,100,100,100);
	}
	if( stars[2] == 1 ){
		image(pic_star,3100,100,100,100);
	}

	fill(0);
	rect(-1150,360,50,80);
	ellipse(-1150,320,50,50);

	if( pos.x > 300 || pos.y > 400 ){
		rect(50,350,50,80);
		ellipse(50,310,50,50);
	}

	if( pos.x < -910 && pos.x > -990 && pos.y < 190 && pos.y > 110 && stars[0] == 1 ){
		stars[0] = 0;
		star_num++;
	}
	if( pos.x < 2090 && pos.x > 2010 && pos.y < 190 && pos.y > 110 && stars[1] == 1 ){
		stars[1] = 0;
		star_num++;
	}
	if( pos.x < 3190 && pos.x > 3110 && pos.y < 190 && pos.y > 110 && stars[2] == 1 ){
		stars[2] = 0;
		star_num++;
	}

	if( pos.x < -1125 && pos.x > -1175 && pos.y < 400 && pos.y > 320 ){
		win = true;
	}

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

void vis_one(){

	if( pos.x > 0 ){
		now_x = 0;
	}
	if( pos.x < -50 ){
		now_x = 1200;
	}
	if( (pos.x-now_x) > 600 ){
		now_x = -(pos.x-600);
	}
	if( now_x < -2400 ){
		now_x = -2400;
	}
	
}	
