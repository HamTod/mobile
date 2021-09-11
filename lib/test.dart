
void main(){
  Object bar ;
  bar = 123;
  bar = "hello";
  //print(bar);

  /*
  int? age; //null
  String name;

  temp = age!; //ไม่มีทางเป็น Null แน่ๆ
  */

  //final ทำ Interpreting
  final String name = 'A';
  // name = 'B'; // Error เพราะ ข้างบนกำนหดค่าไว้แล้ว

  // final ใช้ประกาสกับตัวแปร -- const ประกาศกับค่าข้างในได้
  // ** const **
  var foo = const[1, 2, 3]; //กำนดค่า่ไว้ห้ามแก้ค่าของ foo ชี้ค่า 1 2 3

  // foo.ad0d(4);     //
  foo = [4, 5, 6]; //foo ชี้ค่า4 5 6
  foo.add(999); // foo เพิ่ม 999
  print(foo); // [4, 5, 6, 999]


}

String? f(){
  return 'Hello';
}