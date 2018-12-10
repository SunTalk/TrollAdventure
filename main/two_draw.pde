void draw_two(){

	fill(0);
	image(pic_home,-now_x+1100,-now_y, 100, 100);//home
	image(pic_star,-now_x+500,-now_y,100,100);//star
	textSize(80);
	text("X "+star_num ,-now_x+600,-now_y+80);

	fill(0);
	textSize(100);

	if(pos.x > 3600 && pos.y < 900)
	{	
		protagonist.stp = true;
		protagonist.tp(5, pos.y, true);
		protagonist.move = true;
		protagonist.action(450);
		lying++;

		if(lying == 1)
			check = false;
		else
			check = true;
	}
	else if(pos.x < 0 && pos.y < 1600)
	{	
		protagonist.stp = true;
		if(pos.y < 1300 && pos.y > 900)
			protagonist.tp(3595, pos.y-545, true);
		else if(pos.y < 1600 && pos.y > 1300)
			protagonist.tp(3595, pos.y-845, true);
		else
			protagonist.tp(3595, pos.y, true);

		protagonist.move = true;
		protagonist.action(-450);
		lying--;
	}
	else if( pos.x > 3600 && pos.y > 1800 ){
		protagonist.stp = true;
		protagonist.tp(1450,1450,true);
	}

	if(check == false)
	{
		if(diedCount == 0)
		{
			text("Welcome", 10, 100);
			text("Infinite Abyss!!!", 10, 200);
			text("You Died " + diedCount + " Times", 10, 400);
		}
		else
			text("You Died " + diedCount + " Times", 10, 200);
		
	}
	text("Area: " + lying, 2500, 400);

	textSize(80);
	text("<-- GO", 400, 1200);
	text("<-- GO", 400, 1500);

	text("Over My Dead Body", 2800, 1300);
	text("If You can -->", 2900, 1400);

	text("Falling Down", 4200, 1100);
	text("to", 4450, 1200);
	text("Go Back", 4350, 1300);

	fill(0);
	rect(1600,1680,50,80);//end
	ellipse(1600,1640,50,50);

	if( pos.x > 2000 || pos.x < 1000 || pos.y < 1500 || pos.y > 1800 ){
		fill(182);
		rect(1500, 1650, 1000, 300);
	}

	if( stars[0] == 1 ){
		image(pic_star,3350,100,100,100);
	}
	if( stars[1] == 1 ){
		image(pic_star,1350,150,100,100);
	}
	if( stars[2] == 1 ){
		image(pic_star,4400,1600,100,100);
	}

	if( pos.x < 3440 && pos.x > 3360 && pos.y < 190 && pos.y > 110 && stars[0] == 1 ){
		stars[0] = 0;
		star_num++;
	}
	if( pos.x < 1440 && pos.x > 1360 && pos.y < 240 && pos.y > 160 && stars[1] == 1 ){
		stars[1] = 0;
		star_num++;
	}
	if( pos.x < 4490 && pos.x > 4410 && pos.y < 1690 && pos.y > 1610 && stars[2] == 1 ){
		stars[2] = 0;
		star_num++;
	}

	if( pos.x < 1625 && pos.x > 1575 && pos.y < 1720 && pos.y > 1640 ){
		win = true;
	}

}

void vis_two(){
	if( pos.x > 0 )
		now_x = 0;

	// if( pos.x < -50 )
	// 	now_x = 1200;

	if( (pos.x-now_x) > 600 )
		now_x = -(pos.x-600);

	if( now_x < -2400 )
		now_x = -2400;

	if( pos.y > 950)
		now_y = -900;
	else
		now_y = 0;

	if(pos.x > 3630)
		now_x = -3600;
}