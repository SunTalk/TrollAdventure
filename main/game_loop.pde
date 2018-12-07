void mousePressed() {
	
	if( gamemode == 0 ){
		if( mousePressed == true && mouseButton == LEFT ){
			float range_tmp;
			range_tmp = ( mouseX - 600 )*( mouseX - 600 ) + ( mouseY - 550 )*( mouseY - 550 );
			if( range_tmp < 10000 ){
				gamemode = 5;
			}
		}
	}

	if( win ){
		if( mousePressed == true && mouseButton == LEFT ){
			if( mouseX > 500 && mouseX < 700 && mouseY > 460 && mouseY < 540 ){
				gamemode = 0;
				win = false;
				setup();
			}
		}
	}

	if( gamemode == 5 ){
		if( mousePressed == true && mouseButton == LEFT ){
			if( mouseX > 500 && mouseX < 700 && mouseY > 460 && mouseY < 540 ){
				gamemode = 0;
			}
			if( mouseX > 320 && mouseX < 570 && mouseY > 200 && mouseY < 400 ){
				gamemode = 1;
				setup();
			}
			if( mouseX > 630 && mouseX < 880 && mouseY > 200 && mouseY < 400 ){
				// gamemode = 2;
				// setup();
			}
		}
	}

	if( gamemode == 1 || gamemode == 2 ){
		if( mousePressed == true && mouseButton == LEFT ){//-now_x+1150,50,50,50
			if( mouseX > -now_x+1150-25 && mouseX < -now_x+1150+25 && mouseY > 25 && mouseY < 75 ){
				gamemode = 0;
				setup();
			}
		}
	}

	
}

void keyPressed(){
	if( keyCode == RIGHT ){
		_r_ = true;
	}
	if( keyCode == LEFT ){
		_l_= true;
	}
	if( keyCode == UP || key == ' ' ){
		_jump_ = true;
	}
	if( key == 's' || key == 'S' ){
		_stop_ = true;
	}
}

void keyReleased(){
	if( keyCode == RIGHT ){
		_r_ = false;
	}	
	if( keyCode == LEFT ){
		_l_ = false;
	}
	if( keyCode == UP || key == ' ' ){
		_jump_ = false;
	}
	if( key == 's' || key == 'S' ){
		_stop_ = false;
	}
}
