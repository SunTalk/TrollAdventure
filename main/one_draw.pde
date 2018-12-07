void draw_one(){
	fill(0);
	image(pic_home,-now_x+1100,0, 100, 100);//home
	image(pic_star,-now_x+500,0,100,100);//star
	textSize(80);
	text("X "+star_num ,-now_x+600,80);


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

	rect(50,350,50,80);
	ellipse(50,310,50,50);

	if( pos.x < -900 && pos.x > -1100 && pos.y < 200 && pos.y > 0 && stars[0] == 1 ){
		stars[0] = 0;
		star_num++;
	}
	if( pos.x < 2100 && pos.x > 1900 && pos.y < 200 && pos.y > 0 && stars[1] == 1 ){
		stars[1] = 0;
		star_num++;
	}
	if( pos.x < 3200 && pos.x > 3000 && pos.y < 200 && pos.y > 0 && stars[2] == 1 ){
		stars[2] = 0;
		star_num++;
	}

	if( pos.x < -1125 && pos.x > -1175 && pos.y < 400 && pos.y > 320 && stars[2] == 1  ){
		win = true;
	}

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
