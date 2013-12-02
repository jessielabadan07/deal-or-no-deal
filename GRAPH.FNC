#include "GAME.CLS"
#include "ENDING.FNC"
void introGraph(void)
{
	Game play;
	int driver=DETECT,mode=DETECT,color=15,size=8,font=11;
	initgraph(&driver,&mode,"IBM8514.BGI");
	for(int i=0; i<50; i++){
		cleardevice();
		settextstyle(random(font),HORIZ_DIR,random(size));
		setcolor(random(color));
		outtextxy(80,100,"Deal or No Deal");
		delay(50);
	}
	cleardevice();
	setbkcolor(DARKGRAY);
	setcolor(LIGHTGRAY);
	setfillstyle(HATCH_FILL,LIGHTGRAY);
	setlinestyle(SOLID_LINE,5,THICK_WIDTH);
	bar(100,400,520,100);
	setfillstyle(BKSLASH_FILL,LIGHTGRAY);
	bar(210,110,190,20);		// stand1
	bar(430,110,410,20);		// stand2
	bar(190,20,420,40);		// horizontal line
	bar(110,120,510,110);
	bar(110,120,120,380);
	bar(110,370,510,380);
	bar(500,120,510,380);
	for(int x=15; x<100; x++){
	settextstyle(TRIPLEX_FONT,HORIZ_DIR,5);
	setcolor(WHITE);
	outtextxy(128,140,"DEAL or NO DEAL");
	setcolor(random(color));
	outtextxy(130,140,"DEAL or NO DEAL");
	settextstyle(BOLD_FONT,HORIZ_DIR,1);
	setcolor(WHITE);
	outtextxy(210,200,"Jessie Games");
	outtextxy(170,250,"Production Present");
	setcolor(RED);
	settextstyle(DEFAULT_FONT,HORIZ_DIR,3);
	outtextxy(170,320,"Version 1.0");
	settextstyle(SMALL_FONT,HORIZ_DIR,6);
	setcolor(WHITE);
	outtextxy(200,410,"Please wait, Loading...");
	delay(10);
	}
	getch();
	closegraph();
	play.display();
	ending();
}