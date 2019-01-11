PImage trans = null;

void madepic(){
	trans = createImage(1200,900,ARGB);
	for(int i = 0 ; i < trans.pixels.length ; i++ ){
		trans.pixels[i] = color(0,0,0,128);
	}

}