class Game{
	private:
		int cse;
		int r,am;
	public:
		void dspGraph(int x,int y);
		void getCase(int c);
		void clrCase(int x,int y);
		void trialCase1(int c1);
		void dspAmnt(int a);
		void myAmnt(void);
		void loading(void);
		void winSnd(void);
		void loseSnd(void);
		void dsp(){;}
		int  retAmnt(void);
		int trialCase(void);
		int getCase();
		void display(){
			textbackground(BLUE);
			clrscr();
			dspAmnt(am);
			dspGraph(1,1);
			dspGraph(14,1);
			dspGraph(27,1);
			dspGraph(1,6);
			dspGraph(14,6);
			dspGraph(27,6);
			dspGraph(1,11);
			dspGraph(14,11);
			dspGraph(27,11);
			dspGraph(1,16);
			dspGraph(14,16);
			dspGraph(27,16);
			getCase(cse);
			getch();
		};
};
// clear the case, 13 space
void Game::clrCase(int x,int y)
{
	gotoxy(x,y);cout<<"            ";
	gotoxy(x,y+1);cout<<"            ";
	gotoxy(x,y+2);cout<<"            ";
	gotoxy(x,y+3);cout<<"            ";
	gotoxy(x,y+4);cout<<"            ";
}
// return the amount
int Game::retAmnt(void)
{
	return am;
}
// display the amounts
void Game::dspAmnt(int a)
{
	long int amnt[12]={1,5,50,500,1000,5000,10000,30000,50000,100000,
								500000,1000000};
	gotoxy(52,1);cout<<"AMOUNTS";
	for(a=0; a<12; a++)
	{
		textcolor(WHITE);
		gotoxy(55,2);cprintf("%ld",amnt[0]);
		gotoxy(55,3);cprintf("%ld",amnt[1]);
		gotoxy(55,4);cprintf("%ld",amnt[2]);
		gotoxy(55,5);cprintf("%ld",amnt[3]);
		gotoxy(55,6);cprintf("%ld",amnt[4]);
		gotoxy(55,7);cprintf("%ld",amnt[5]);
		gotoxy(55,8);cprintf("%ld",amnt[6]);
		gotoxy(55,9);cprintf("%ld",amnt[7]);
		gotoxy(55,10);cprintf("%ld",amnt[8]);
		gotoxy(55,11);cprintf("%ld",amnt[9]);
		gotoxy(55,12);cprintf("%ld",amnt[10]);
		gotoxy(55,13);cprintf("%ld",amnt[11]);
	}
}
// choose case, display the case and clear the case
void Game::getCase(int c)
{
	int tmp[4];
	top:
	gotoxy(18,21);cout<<"\t\t\t";
	gotoxy(1,21);textcolor(WHITE);cprintf("Choose your case: ");
	gotoxy(19,21);cin>>c;
	cse = c;
	if(c < 1 || c > 12)
		goto top;
	else{
		if(cse==1){
			dspGraph(60,18);
			clrCase(1,1);
			gotoxy(65,20);textcolor(WHITE);cprintf("%d",cse);
			trialCase1(cse);
		}
		else if(cse==2){
			dspGraph(60,18);
			clrCase(14,1);
			gotoxy(65,20);textcolor(WHITE);cprintf("%d",cse);
			trialCase1(cse);
		}
		else if(cse==3){
			dspGraph(60,18);
			clrCase(27,1);
			gotoxy(65,20);textcolor(WHITE);cprintf("%d",cse);
			trialCase1(cse);
		}
		else if(cse==4){
			dspGraph(60,18);
			clrCase(1,6);
			gotoxy(65,20);textcolor(WHITE);cprintf("%d",cse);
			trialCase1(cse);
		}
		else if(cse==5){
			dspGraph(60,18);
			clrCase(14,6);
			gotoxy(65,20);textcolor(WHITE);cprintf("%d",cse);
			trialCase1(cse);
		}
		else if(cse==6){
			dspGraph(60,18);
			clrCase(27,6);
			gotoxy(65,20);textcolor(WHITE);cprintf("%d",cse);
			trialCase1(cse);
		}
		else if(cse==7){
			dspGraph(60,18);
			clrCase(1,11);
			gotoxy(65,20);textcolor(WHITE);cprintf("%d",cse);
			trialCase1(cse);
		}
		else if(cse==8){
			dspGraph(60,18);
			clrCase(14,11);
			gotoxy(65,20);textcolor(WHITE);cprintf("%d",cse);
			trialCase1(cse);
		}
		else if(cse==9){
			dspGraph(60,18);
			clrCase(27,11);
			gotoxy(65,20);textcolor(WHITE);cprintf("%d",cse);
			trialCase1(cse);
		}
		else if(cse==10){
			dspGraph(60,18);
			clrCase(1,16);
			gotoxy(65,20);textcolor(WHITE);cprintf("%d",cse);
			trialCase1(cse);
		}
		else if(cse==11){
			dspGraph(60,18);
			clrCase(14,16);
			gotoxy(65,20);textcolor(WHITE);cprintf("%d",cse);
			trialCase1(cse);
		}
		else if(cse==12){
			dspGraph(60,18);
			clrCase(27,16);
			gotoxy(65,20);textcolor(WHITE);cprintf("%d",cse);
			trialCase1(cse);
		}
	}
}
// loading game
void Game::loading(void)
{
	for(int x=15; x<=60; x++){
		gotoxy(x,24);cout<<"Ü";
		delay(50);
	}
}
// 1st, 2nd and 3rd trial case
void Game::trialCase1(int c1)
{
	char ch;
	int j,k,a=0;
	int tmp[4],tmp1[3],tmp2[2];
	double amnt[12]={1,5,50,500,1000,5000,10000,30000,
							50000,100000,500000,1000000};
	randomize();
	srand(time(NULL));
	r=rand()%12;
	gotoxy(50,20);cout<<"User Case";
	for(int i=0; i<4; i++)
	{
		if(amnt[r] >= 1 || amnt[r] <= 12)
		{
			top:
			gotoxy(15,22);cout<<"\t\t";
			gotoxy(1,22);cout<<i+1<<" Choose case: ";
			cin>>tmp[i];
			gotoxy(15,22);cout<<"\t\t";
			if((tmp[i] < 1 || tmp[i] > 12) && tmp[i] != c1)
				goto top;
				textcolor(RED+BLINK);
			if(tmp[i]==1){
				amnt[a]=500;
				gotoxy(5,3);cout<<"500";
				gotoxy(55,5);cprintf("500");
			}
			if(tmp[i]==2){
				amnt[a]=50000;
				gotoxy(18,3);cout<<"50000";
				gotoxy(55,10);cprintf("50000");
			}
			if(tmp[i]==3){
				amnt[a]=1;
				gotoxy(32,3);cout<<"1";
				gotoxy(55,2);cprintf("1");
			}
			if(tmp[i]==4){
				gotoxy(4,8);cout<<"1000";
				gotoxy(55,6);cprintf("1000");
				amnt[a]=1000;
			}
			if(tmp[i]==5){
				gotoxy(19,8);cout<<"5";
				gotoxy(55,3);cprintf("5");
				amnt[a]=5;
			}
			if(tmp[i]==6){
				gotoxy(29,8);cout<<"1000000";
				gotoxy(55,13);cprintf("1000000");
				amnt[a]=1000000;
			}
			if(tmp[i]==7){
				gotoxy(5,13);cout<<"10000";
				gotoxy(55,8);cprintf("10000");
				amnt[a]=10000;
			}
			if(tmp[i]==8){
				gotoxy(19,13);cout<<"50";
				gotoxy(55,4);cprintf("50");
				amnt[a]=50;
			}
			if(tmp[i]==9){
				gotoxy(31,13);cout<<"30000";
				gotoxy(55,9);cprintf("30000");
				amnt[a]=30000;
			}
			if(tmp[i]==10){
				gotoxy(4,18);cout<<"100000";
				gotoxy(55,11);cprintf("100000");
				amnt[a]=100000;
			}
			if(tmp[i]==11){
				gotoxy(17,18);cout<<"500000";
				gotoxy(55,12);cprintf("500000");
				amnt[a]=500000;
			}
			if(tmp[i]==12){
				gotoxy(30,18);cout<<"30000";
				gotoxy(55,6);cprintf("30000");
				amnt[a]=5000;
			}
			for(int x=0;x<50;x++){
			gotoxy(1,23);cout<<"Value of your "<<i+1<<" case: "<<amnt[a];
			delay(10);
			}
			gotoxy(1,40);cout<<"\t\t";
		}
	}
	loading();
	gotoxy(70,15);cout<<amnt[random(r)];
	gotoxy(14,24);cout<<"\t\t\t\t\t\t\t";
	gotoxy(25,25);cout<<"[D]eal or [N]o Deal?";
	ch=getche();
	gotoxy(25,25);cout<<"\t\t\t\t\t";
	if(ch=='d'||ch=='D'){
		myAmnt();
		gotoxy(62,20);cout<<"   ";
		gotoxy(65,20);cout<<amnt[r];
		for(int i=0; i<100; i++){
			delay(50);
		}
		if(amnt[r] > amnt[a]){
			winSnd();
		}
		else{
			loseSnd();
		}
		exit(1);
	}
	else{
		gotoxy(70,15);cout<<"\t";
		for(j=0; j<3; j++){
			if(amnt[r] >= 1 || amnt[r] <= 12)
			{
				top1:
				gotoxy(15,22);cout<<"\t\t";
				gotoxy(1,22);cout<<j+1<<" Choose case: ";
				cin>>tmp1[j];
				gotoxy(15,22);cout<<"\t\t";
			if((tmp1[j] < 1 || tmp1[j] > 12) && (tmp1[j]!=tmp[i]))
					goto top1;
			if(tmp1[j]==1){
				gotoxy(5,3);cout<<"500";
				gotoxy(55,5);cprintf("500");
				amnt[a]=500;
			}
			if(tmp1[j]==2){
				gotoxy(18,3);cout<<"50000";
				gotoxy(55,10);cprintf("50000");
				amnt[a]=50000;
			}
			if(tmp1[j]==3){
				gotoxy(32,3);cout<<"1";
				gotoxy(55,2);cprintf("1");
				amnt[a]=1;
			}
			if(tmp1[j]==4){
				gotoxy(4,8);cout<<"1000";
				gotoxy(55,6);cprintf("1000");
				amnt[a]=1000;
			}
			if(tmp1[j]==5){
				gotoxy(19,8);cout<<"5";
				gotoxy(55,3);cprintf("5");
				amnt[a]=5;
			}
			if(tmp1[j]==6){
				gotoxy(29,8);cout<<"1000000";
				gotoxy(55,13);cprintf("1000000");
				amnt[a]=1000000;
			}
			if(tmp1[j]==7){
				gotoxy(5,13);cout<<"10000";
				gotoxy(55,8);cprintf("10000");
				amnt[a]=10000;
			}
			if(tmp1[j]==8){
				gotoxy(19,13);cout<<"50";
				gotoxy(55,4);cprintf("50");
				amnt[a]=50;
			}
			if(tmp1[j]==9){
				gotoxy(31,13);cout<<"30000";
				gotoxy(55,9);cprintf("30000");
				amnt[a]=30000;
			}
			if(tmp1[j]==10){
				gotoxy(4,18);cout<<"100000";
				gotoxy(55,11);cprintf("100000");
				amnt[a]=100000;
			}
			if(tmp1[j]==11){
				gotoxy(17,18);cout<<"500000";
				gotoxy(55,12);cprintf("500000");
				amnt[a]=500000;
			}
			if(tmp1[j]==12){
				gotoxy(30,18);cout<<"30000";
				gotoxy(55,6);cprintf("30000");
				amnt[a]=5000;
			}
			for(int x=0;x<50;x++){
				gotoxy(1,23);cout<<"Value of your "<<i+1<<" case: "<<amnt[a];
				delay(10);
			}
				gotoxy(1,40);cout<<"\t\t";
			}
		}
	}
	loading();
	gotoxy(70,15);cout<<amnt[random(r)];
	gotoxy(14,24);cout<<"\t\t\t\t\t\t\t";
	gotoxy(25,25);cout<<"[D]eal or [N]o Deal?";
	ch=getche();
	gotoxy(14,25);cout<<"\t\t\t\t\t";
	if(ch=='d'||ch=='D'){
		myAmnt();
		gotoxy(65,20);cout<<amnt[random(r++)];
		for(int i=0; i<100; i++){
			delay(50);
		}
		if(amnt[r] > amnt[a]){
			winSnd();
		}
		else{
			loseSnd();
		}
		exit(1);
	}
	else{
		gotoxy(70,15);cout<<"\t";
		for(k=0; k<3; k++){
			if(amnt[r] >= 1 || amnt[r] <= 12)
			{
				top2:
				gotoxy(15,22);cout<<"\t\t";
				gotoxy(1,22);cout<<k+1<<" Choose case: ";
				cin>>tmp2[k];
				gotoxy(15,22);cout<<"\t\t";
			if((tmp2[k] < 1 || tmp2[k] > 12) && (tmp2[k]!=tmp1[j]))
					goto top;
			if(tmp2[k]==1){
				gotoxy(5,3);cout<<"500";
				gotoxy(55,5);cprintf("500");
				amnt[a]=500;
			}
			if(tmp2[k]==2){
				gotoxy(18,3);cout<<"50000";
				gotoxy(55,10);cprintf("50000");
				amnt[a]=50000;
			}
			if(tmp2[k]==3){
				gotoxy(32,3);cout<<"1";
				gotoxy(55,2);cprintf("1");
				amnt[a]=1;
			}
			if(tmp2[k]==4){
				gotoxy(4,8);cout<<"1000";
				gotoxy(55,6);cprintf("1000");
				amnt[a]=1000;
			}
			if(tmp2[k]==5){
				gotoxy(19,8);cout<<"5";
				gotoxy(55,3);cprintf("5");
				amnt[a]=5;
			}
			if(tmp2[k]==6){
				gotoxy(29,8);cout<<"1000000";
				gotoxy(55,13);cprintf("1000000");
				amnt[a]=1000000;
			}
			if(tmp2[k]==7){
				gotoxy(5,13);cout<<"10000";
				gotoxy(55,8);cprintf("10000");
				amnt[a]=10000;
			}
			if(tmp2[k]==8){
				gotoxy(19,13);cout<<"50";
				gotoxy(55,4);cprintf("50");
				amnt[a]=50;
			}
			if(tmp2[k]==9){
				gotoxy(31,13);cout<<"30000";
				gotoxy(55,9);cprintf("30000");
				amnt[a]=30000;
			}
			if(tmp2[k]==10){
				gotoxy(4,18);cout<<"100000";
				gotoxy(55,11);cprintf("100000");
				amnt[a]=100000;
			}
			if(tmp2[k]==11){
				gotoxy(17,18);cout<<"500000";
				gotoxy(55,12);cprintf("500000");
				amnt[a]=500000;
			}
			if(tmp2[k]==12){
				gotoxy(30,18);cout<<"30000";
				gotoxy(55,6);cprintf("30000");
				amnt[a]=5000;
			}
			for(int x=0;x<50;x++){
				gotoxy(1,23);cout<<"Value of your "<<i+1<<" case: "<<amnt[a];
				delay(10);
			}
			gotoxy(1,40);cout<<"\t\t";
			}
		}
	}
	loading();
	gotoxy(70,15);cout<<amnt[random(r)];
	gotoxy(14,24);cout<<"\t\t\t\t\t\t\t";
	gotoxy(25,25);cout<<"[D]eal or [N]o Deal?";
	ch=getche();
	gotoxy(14,25);cout<<"\t\t\t\t\t";
	if(ch=='d'||ch=='D'){
		myAmnt();
		gotoxy(65,20);cout<<amnt[random(r++)];
		for(int i=0; i<100; i++){
			delay(50);
		}
		if(amnt[r] > amnt[a]){
			winSnd();
		}
		else{
			loseSnd();
		}
		exit(1);
	}
	else{

	}
}
void Game::myAmnt()
{
	gotoxy(5,3);cout<<"500";
	gotoxy(18,3);cout<<"50000";
	gotoxy(32,3);cout<<"1";
	gotoxy(4,8);cout<<"1000";
	gotoxy(19,8);cout<<"5";
	gotoxy(29,8);cout<<"1000000";
	gotoxy(5,13);cout<<"10000";
	gotoxy(19,13);cout<<"50";
	gotoxy(31,13);cout<<"30000";
	gotoxy(4,18);cout<<"100000";
	gotoxy(16,18);cout<<"500000";
	gotoxy(30,18);cout<<"30000";	
}
int Game::trialCase()
{
	return cse;
}
// return the case
int Game::getCase()
{
	return cse;
}
// display the graph and amounts
void Game::dspGraph(int x,int y)
{
	textcolor(GREEN);
	gotoxy(x,y);cprintf("ÜÜÜÜÛÛÛÛÜÜÜÜ");
	gotoxy(x,y+1);cprintf("Û          Û");
	gotoxy(x,y+2);cprintf("Û          Û");
	gotoxy(x,y+3);cprintf("Û          Û");
	gotoxy(x,y+4);cprintf("ßßßßßßßßßßßß");
	textcolor(WHITE);
	gotoxy(6,3);cprintf("1");
	gotoxy(19,3);cprintf("2");
	gotoxy(32,3);cprintf("3");
	gotoxy(6,8);cprintf("4");
	gotoxy(19,8);cprintf("5");
	gotoxy(32,8);cprintf("6");
	gotoxy(6,13);cprintf("7");
	gotoxy(19,13);cprintf("8");
	gotoxy(32,13);cprintf("9");
	gotoxy(6,18);cprintf("10");
	gotoxy(19,18);cprintf("11");
	gotoxy(32,18);cprintf("12");
	gotoxy(55,15);cout<<"Bankers Offer: ";
}
// ending game with music
void Game::winSnd(void)
{
	int driver=DETECT,mode=DETECT,color=15;
	initgraph(&driver,&mode,"IBM8514.BGI");
	int ton[]={600,200,900,700,350,550,890,660,180,270};
	int ton1[]={270,180,660,890,550,350,700,900,200,600};
	for(int j=0; j<50; j++){
		cleardevice();
		sound(ton[j]);
		sound(ton1[j]);
		settextstyle(TRIPLEX_FONT,HORIZ_DIR,5);
		setcolor(WHITE);
		outtextxy(100,50,"CONGRATULATIONS!");
		setcolor(random(color));
		outtextxy(101,50,"CONGRATULATIONS!");
		outtextxy(100,100,"Thanks for playing");
		setcolor(random(color));
		outtextxy(101,100,"Thanks for playing");
		delay(100);
		nosound();
	}
	closegraph();
}
void Game::loseSnd(void)
{
	int driver=DETECT,mode=DETECT,color=15;
	initgraph(&driver,&mode,"IBM8514.BGI");
	int ton[]={100,200,300,400,500};
	int ton1[]={500,400,300,200,100};
	for(int j=0; j<5; j++)
	{
		for(int i=0; i<5; i++){
			settextstyle(TRIPLEX_FONT,HORIZ_DIR,5);
			setcolor(WHITE);
			outtextxy(100,50,"Better Luck Next Time!");
			setcolor(random(color));
			outtextxy(101,50,"Better Luck Next Time!");
			outtextxy(100,100,"Thanks for playing");
			setcolor(random(color));
			outtextxy(101,100,"Thanks for playing");
			delay(100);
			sound(ton[j]);
			delay(100);
			nosound();
			sound(ton1[i]);
			delay(100);
			nosound();
		}
	}
	closegraph();
}