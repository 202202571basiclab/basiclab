import 'dart:convert';
import 'dart:math';

class Student{
  String name = '';
  int kor = 0;
  int eng =0;
  int math =0;
  double avg =0.0;
  Student(){
    kor = Random().nextInt(99)+1;
    eng = Random().nextInt(99)+1;
    math = Random().nextInt(99)+1;
  }
  void setAvg() => avg = ( kor + eng + math)/ 3.0;
}

void main() {
  var aList = List.empty(growable: true);
  for(int i=0;i<10;i++){
    Student a = Student();
    a.name = AsciiDecoder().convert([65+i]);
    aList.add(a);
  }

  String strTable = '이름 국어 영어 수학 평균';
  print(strTable);

  for(int i=0;i<10;i++){
    aList[i].setAvg();
    print(aList[i].name.padLeft(4)+
    aList[i].kor.toString().padLeft(5) +
    aList[i].eng.toString().padLeft(5) +
    aList[i].math.toString().padLeft(5) +
    aList[i].avg.toStringAsFixed(2).padLeft(8));
  }

  print("평균으로 정렬");
  print(strTable+ " 비고");
  List newList = List.from(aList);
  newList.sort((a,b) => a.avg.compareTo(b.avg));

  for(var i in newList){
    String str = i.name.padLeft(4) +
        i.kor.toString().padLeft(5) +
        i.eng.toString().padLeft(5) +
        i.math.toString().padLeft(5) +
        i.avg.toStringAsFixed(2).padLeft(8);
    if(i.avg >50.0){
      str +="PASS".padLeft(5);
      print(str);
    }
    else{
      str+="FAIL".padLeft(5);
      print(str);
    }    
  }
}
