void draw_one(){
	fill(0);
	image(pic_home,-now_x+1100,0, 100, 100);//home
	image(pic_star,-now_x+500,0,100,100);//star
	textSize(80);
	text("X "+star_num ,-now_x+600,80);
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
