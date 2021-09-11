import 'dart:io';
import 'dart:math';

void main() {
  // ***** EX array *****
  //var myList = ['hello',1,12.21]; หลายๆประเภท
  List<String> myList = ['hello', 'AAA', 'BBB']; //ประกาศเป็นประเภทๆไป
  myList.add('CCC');
  print(myList[3]); //ค่าที่ได้ก็คือ CCC

  for(var i =0; i< myList.length; i++){ //Loop Newbie
    print(myList[i]); //แสดงค่าในอาเรย์
  }
  for(var item in myList){ //ส่วนใหญ่ใช้ลูปแบบนี้ ได้เหมือนกัน
    print(item);
  }
  myList.forEach((item) { //ลูปดูเซียน
    print(item);
  });
  // ***** END EX array *****

  const MAX_RANDOM = 500; //กำหนดค่าคงที่ ถ้ามี const ไม่ต้องใส่พารามิเตอร์ Ex. int, var หน้า MAX_RANDOM

  var r = Random();
  var answer = r.nextInt(MAX_RANDOM) + 1;

  var guess;
  do {//ลูปวนขณะที่ answer != guess วนจนกว่าจะเท่ากันแล้วหยุด
  //print('Guess the number between 1 and 100 '); ขึ้นบรรทัดใหม่อัตโนมัติ
  stdout.write('Guess the number between 1 and $MAX_RANDOM:  '); //ปริ๊นแบบไม่ขึ้นบรรทัดใหม่อัตโนมัติ
  String? input = stdin.readLineSync();
  if(input == null){
    return;
  }

   guess = int.parse(input!);
    if(answer == guess){
      print('Correct!');
    }else if(answer < guess){
      print('Too Hight!');
    }else{
      print('Too Low');
    }
  } while(guess != answer);
    print('----- THE END -----');
}
