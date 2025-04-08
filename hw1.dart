import 'dart:io';

void main(List<String> arguments) {
  String? str = stdin.readLineSync();
  int sum=0,num=0;
  int? a = int.tryParse(str!);
  num=a!;
  if(num>0){
    while(num!=0){
      sum+=(num%10);
      num~/=10;
    }
    print(sum);  
  }
  else{
    print(num);
  }

}
