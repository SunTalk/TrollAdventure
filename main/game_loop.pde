void mousePressed() {
	
	if( gamemode == 0 ){
		if( mousePressed == true && mouseButton == LEFT ){
			if( mouseX > 200 && mouseX < 630 && mouseY > 120 && mouseY < 220 && start_troll == false ){
				gamemode = 1;
			}
			else if( mouseX > 500 && mouseX < 700 && mouseY > 450 && mouseY < 650 && start_troll == false ){
				start_troll = true;
			}
			else if( mouseX > 500 && mouseX < 700 && mouseY > 550 && mouseY < 650 && start_troll == true ){
				start_troll = false;
			}
		}
	}
	
}