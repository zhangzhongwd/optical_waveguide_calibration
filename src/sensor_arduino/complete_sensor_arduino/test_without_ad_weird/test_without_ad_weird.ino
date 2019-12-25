int number=100;
int a[100]={};
int i,j,k,p,temp,sum,average;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  
//  for(k=0; k<10;k++){
//    a[k]=analogRead(0);
//  }
//  for(j=0;j<10;j++){
//    for(i=0;i<9-j;i++){
//      if(a[i]>a[i+1]){
//        temp=a[i];
//        a[i]=a[i+1];
//        a[i+1]=temp;
//      }
//    }
//  }
//  sum=0;
//  for(p=3;p<7;p++){
//    sum=sum+a[p];
//  }
//  average=sum/4;
//  Serial.println(average);
  
//  Serial.println(millis());
//  Serial.println(analogRead(0));
//  delay(1);


for(k=0;k<number;k++){
  a[k]=analogRead(0);
}
int b[number]={0};
int count=0;
for(i=0;i<number-1;i++){
  if(abs(a[i]-a[i+1])<2){
    b[i]=a[i];
    count=count+1;
  }
}
sum=0;
for(i=0;i<number;i++){
  sum=sum+b[i];
}
average=sum/count;
Serial.println(average);

//Serial.println(millis());
//Serial.println(analogRead(0));
}
