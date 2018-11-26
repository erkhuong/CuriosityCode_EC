// Post your CuriosityCode_EC here. 
float BallX = 350;
float BallY = 200;
float BallBounceX = 2.01;
float BallBounceY = 2.01;
float BallBounceXchange = 1.01;
float BallBounceYchange = 0.05;
void setup(){
  size(400,400);
  background(0,200,0);
  noStroke();
}

void draw(){
  background(0,200,0);
  fill(100,100,100);
  rect(180,130,32.5,150);
  fill(0);
  rect(BallX,BallY,10,10);
  BallX = BallX -BallBounceX;
  BallY = BallY +BallBounceY;
  BallBounceY= BallBounceY +BallBounceYchange;
  BallBounceX= BallBounceX *BallBounceXchange;
  if(BallBounceX>=10.1){
    BallBounceXchange=0.99;}
  if(BallBounceX<=2.99){
    BallBounceXchange=1.01;}
  if(BallBounceY>=20.1){
    BallBounceYchange=-0.05;}
  if(BallBounceY<=2.99){
    BallBounceYchange=0.05;}
  if(BallY>=390 || BallY<=0){
    BallBounceY= -BallBounceY;}
  if(BallX>=390 || BallX <=0){
    BallBounceX= -BallBounceX;}
  if(BallX>=165 && BallX<=215 && BallY<=274 && BallY >=126){
    BallBounceX=BallBounceX*-1;}
  if(BallX>=175 && BallX<=205 && BallY<=275 && BallY >=125){
    BallBounceY=BallBounceY*-1;}
    }
