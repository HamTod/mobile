//25 กค 2564

void main(){
  /*sayHello('World', text2: 'Android'); //Java
  sayHello('Flutter');*/
  var hello = new Hello(text: 'Flutter'); //เรียกใช้ Class ในภาษาDart ประกาสคล้ายๆJava
  //var hello = Hello();
  hello.say();
  /*hello.text = 'Android';
  Hello.say();*/
}
/*void sayHello(String text, {String text2 = 'iOS'}){
  print('Hello ${text.toUpperCase()} ${text2.toLowerCase()} ');
}*/
class Hello{//ประกาส Constructor Field
  String text; //text มีค่าเป็น Null ได้ ในกรณีที่ีไม่ได้ระบุค่า Defalt ในบรรทัดที่6 ใช้?ต่อท้าย

  //Hello(this.text); //ภาษาDart text คือ field ของ class ไม่ได้ขึ้นอยู่กับฟังก์ชันใด
  Hello({this.text = 'World'});

  /*Hello(String t){  //ภาษา JAVA
    this.text = t; //text คือ field ของ class
  }*/
  void say({String text = 'World'}){
    print('Hello ${this.text}');
  }

}

