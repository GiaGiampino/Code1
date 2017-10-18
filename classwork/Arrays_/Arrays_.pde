int numE = 100;

int eSize;

int[] eSpeedX = new int[numE];
int[] eSpeedY = new int[numE];

int[] ePosX = new int [numE];
int[] ePosY = new int [numE]; 


void setup(){
  size(1000, 1000);
  eSize = 50;
  
  for (int i = 0; i<numE; i++){
    ePosX[i] = int(random(0, width));
    ePosY[i]= int(random(0, width));
  }
}
    

void draw(){
  
  for (int i = 0; i<numE; i++){
    ellipse(ePosX[i], ePosY[i], eSize, eSize);
}}