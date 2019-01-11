void draw_start(){
	
	textFont(start_interface);

	textSize(50);
	fill(0);
	text("Troll",150,200);
	text("Adventure",250,350);
	strokeWeight(5);
	fill(255);
	ellipse(400, 550, 200, 200);//left
	ellipse(800, 550, 200, 200);//right
	rect(800,550,100,120);//right
	fill(0);
	triangle(460, 550, 370, 500, 370, 600);//left
	//right
	line(770,510,830,510);
	line(770,530,830,530);
	line(770,550,830,550);
	line(770,570,830,570);
	line(770,590,830,590);

	fill(0);
	rect(70,100,50,80);
	ellipse(70,60,50,50);

	textFont(origin_font);
	now_x = now_y = 0;

	if( pos.x < 95 && pos.x > 45 && pos.y < 140 && pos.y > 60 ){
		win = true;
	}

}

void draw_choice(){//gamemode == 5
	
	image(trans,0,0);

	fill(255);
	stroke(1);
	rect(600,350,700,500);
	rect(445,300,250,200);
	rect(755,300,250,200);
	rect(600,500,200,80);
	fill(0);
	textSize(80);
	text("level 2", 655,330);
	text("level 1", 345,330);
	text("BACK", 540,530);
}

void draw_introduction(){// gamemode == 6
	
	image(trans,0,0);

	fill(255);
	stroke(1);
	rect(600,350,700,500);
	rect(600,500,200,80);
	fill(0);
	textSize(80);
	if( introduction_page < 5 )
		text("NEXT", 540,530);
	else
		text("BACK", 540,530);

	if( introduction_page == 1 ){
		pushMatrix();
		translate(425,350);
		fill(175);
		stroke(0);
		strokeWeight(1);
		ellipse(0,0,100*2,100*2);
		fill(255);
		ellipse(100/2,-32,100/2,100/2);
		ellipse(-100/2,-32,100/2,100/2);
		fill(0);
		ellipse(100/2,-32,100/5,100/5);
		ellipse(-100/2,-32,100/5,100/5);
		fill(255,0,0);
		ellipse(-32,3,100/2,100/5);
		popMatrix();

		fill(0);
		textSize(60);
		text("This is our",500,200);
		text("Protagonist",550,300);
		text("He's name is Troll",570,400);

	}
	else if( introduction_page == 2 ){
		fill(0);
		rect(400,175,50,50);//left
		rect(500,175,50,50);//right
		rect(400,275,50,50);//jump
		rect(400,375,50,50);//stop
		textSize(60);
		text(": Basic move",550,200);
		text(": jump          cd : 1.2 s",450,300);
		text(": Stop          cd : 2.0 s",450,400);
		fill(255);
		triangle(380,175,415,160,415,190);//left
		triangle(520,175,485,160,485,190);//right
		triangle(400,260,385,295,415,295);//jump
		triangle(400,390,385,355,415,355);//stop
		// textSize(60);
		// text("S",390,395);
	}
	else if( introduction_page == 3 ){
		fill(182);
		stroke(1);
		strokeWeight(5);
		rect(450,200,200,50);
		fill(0,0,255);
		rect(450,350,200,50);
		fill(0);
		textSize(60);
		text("General floor",580,225);
		text("Powerful floor",580,375);

	}
	else if( introduction_page == 4 ){
		image(pic_star,320,220,100,100);
		textSize(60);
		text("there are three star",470,270);
		text("in each level",520,370);
	}
	else if( introduction_page == 5 ){
		fill(0);
		rect(400,320,50,80);
		ellipse(400,280,50,50);
		textSize(60);
		text("if you got this door",470,300);
		text("you win",570,400);
	}

}
