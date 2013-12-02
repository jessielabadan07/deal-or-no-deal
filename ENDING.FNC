#include "ENDSND.H"
void endSnd(void);
void ending(void)
{
	Game p2;
	int driver=DETECT,mode=DETECT,color=15;
	initgraph(&driver,&mode,"IBM8514.BGI");
	cleardevice();
	setbkcolor(RED);
	for(int x=15; x<100; x++){
	settextstyle(TRIPLEX_FONT,HORIZ_DIR,5);
	setcolor(WHITE);
	endSnd();
	outtextxy(128,140,"DEAL or NO DEAL");
	setcolor(random(color));
	outtextxy(130,140,"DEAL or NO DEAL");
	settextstyle(BOLD_FONT,HORIZ_DIR,1);
	setcolor(WHITE);
	outtextxy(210,200,"Thanks for PLaying");
	}
	closegraph();
	clrscr();
	p2.winSnd();
	p2.loseSnd();
}
