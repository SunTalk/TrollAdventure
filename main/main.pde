int gamemode = 0;

void setup(){

	size(1200,900);
	smooth();

	if( gamemode == 0 ){
		set_start();
	}

}

void draw(){

	if( gamemode == 0 ){
		draw_start();
	}

}