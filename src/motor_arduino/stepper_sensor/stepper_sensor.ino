long exe_time=0;
int i=0;
int voltage=0;
void setup() {
  // put your setup code here, to run once:
  pinMode(5,OUTPUT);
  pinMode(6,OUTPUT);
  pinMode(7,OUTPUT);
  
}

void loop() {
  // put your main code here, to run repeatedly:
   int voltage[]={0,0,0};
   for (int i=0;i<2;i++){
    voltage[0]=voltage[0]+analogRead(0);
    voltage[1]=voltage[1]+analogRead(1);
    voltage[2]=voltage[2]+analogRead(2);
   }
   if (voltage[0]<200)
   digitalWrite(5,LOW);
   else
   digitalWrite(5,HIGH);
   if (voltage[1]<200)
   digitalWrite(6,LOW);
   else
   digitalWrite(6,HIGH);
   if (voltage[2]<200)
   digitalWrite(7,LOW);
   else
   digitalWrite(7,HIGH);
   
}
