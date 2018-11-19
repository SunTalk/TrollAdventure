boolean start_troll;

void draw_start(){

	if( start_troll == true ){
		fill(255);
		strokeWeight(5);
		rect(200, 200, 800, 500);
		textSize(30);
		fill(0);
		text("This is not",250,400);
		text("start button !",300,500);
		fill(255);
		ellipse(600, 600, 220, 120);
		// rect(500,550,200,100);
		textSize(25);
		fill(0);
		text("sure",505,615);
	}
	
	if( start_troll == false ){
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
	}

}