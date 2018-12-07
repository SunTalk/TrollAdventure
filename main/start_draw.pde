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

	textFont(origin_font);
	now_x = now_y = 0;
}

void draw_choice(){
	fill(255);
	stroke(1);
	rect(600,350,700,500);
	rect(445,300,250,200);
	rect(755,300,250,200);
	rect(600,500,200,80);
	fill(0);
	textSize(80);
	text("Stage 2", 655,330);
	text("Stage 1", 345,330);
	text("BACK", 540,530);
}