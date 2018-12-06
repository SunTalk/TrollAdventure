void draw_start(){
	
	textFont(start_interface);

	textSize(50);
	fill(0);
	text("Troll",150,200);
	text("Adventure",250,350);
	strokeWeight(5);
	fill(255);
	ellipse(600, 550, 200, 200);
	fill(0);
	triangle(660, 550, 570, 500, 570, 600);

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