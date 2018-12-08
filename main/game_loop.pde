void mousePressed() {
	
	if( gamemode == 0 ){
		if( mousePressed == true && mouseButton == LEFT ){//Start Button
			int range_tmp;
			range_tmp = ( mouseX - 400 )*( mouseX - 400 ) + ( mouseY - 550 )*( mouseY - 550 );
			if( range_tmp < 10000 ){
				gamemode = 5;
			}
		}
		if( mousePressed == true && mouseButton == LEFT ){//Introduction Button
			int range_tmp;
			range_tmp = ( mouseX - 800 )*( mouseX - 800 ) + ( mouseY - 550 )*( mouseY - 550 );
			if( range_tmp < 10000 ){
				gamemode = 6;
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

	if( die ){
		if( mousePressed == true && mouseButton == LEFT ){
			if( mouseX > 500 && mouseX < 700 && mouseY > 460 && mouseY < 540 ){
				die = false;
				protagonist.killBody();
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
				gamemode = 2;
				setup();
			}
		}
	}

	if( gamemode == 6 ){
		if( mousePressed == true && mouseButton == LEFT ){
			if( mouseX > 500 && mouseX < 700 && mouseY > 460 && mouseY < 540 && introduction_page < 5 ){
				introduction_page++;
			}
			else if( mouseX > 500 && mouseX < 700 && mouseY > 460 && mouseY < 540 ){
				introduction_page = 1;
				gamemode = 0;
			}
		}
	}


	if( gamemode == 1 || gamemode == 2 ){
		if( mousePressed == true && mouseButton == LEFT ){//-now_x+1150,50,50,50
			if( mouseX > 1125 && mouseX < 1175 && mouseY > 25 && mouseY < 75 ){
				gamemode = 0;
				setup();
			}
		}
	}

	
}

void keyPressed(){

	if( die == false && win == false ){

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
