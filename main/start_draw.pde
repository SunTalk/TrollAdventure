void draw_start(){
	
	textFont(start_interface);
	
	background(255);
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