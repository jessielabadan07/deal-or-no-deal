void endSnd(void)
{
	int tokar[]={100,200,300,400,500};
	for(int i=0; i<5; i++){
		sound(tokar[i]);
		delay(100);
		nosound();
	}
}