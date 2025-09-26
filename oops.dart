// void main(){
//   print("hello oops");
// }

// void main(){
//   Example e = new Example(100);
//   e.printname("yash");
// }
// class Example{
//     int age;
//     Example(this.age);
//
//     void printname(String name){
//       print(name);
//       print(age);
//     }
// }


// Default / Generative Constructor
// void main(){
//   var e = Example("yash");
//
// }
//
// class Example{
//   String name;
//     Example(this.name){
//       print(name);
//     }
//
// }


//Named Constructor
// void main(){
//    var e = Example();
//    Example.slow();
// }
//
// class Example{
//   Example(){
//      print("main constructor");
//   }
//   Example.slow(){
//      print("name constructor");
//   }
// }

// Redirecting Constructor
// void main(){
//   var e = Example(100);
//   print(e.a);
//   var e1 = Example.origin();
//   print(e1.a);
//
//
// }
// class Example{
//    int a;
//    Example(this.a);
//    Example.origin():this(0);
// }

//Encapsulation
// void main(){
//   var e = Exmple2 ();
//   e.inside();
//
// }
//
// class Example{
//    int _a = 10;
//
// }
//
// class Exmple2 extends Example{
//     void inside(){
//       print(super._a);
//     }
//
// }

//getter and setter

// void main(){
//    var e = Example();
//    e.name = "yash";
//    print(e.name);
// }
//
// class Example{
//
//    String _name = "";
//    String get name => _name;
//
//    set name(String name){
//       if(name.isNotEmpty){
//           _name = name;
//       }
//    }
// }

// concept inside class and object
// indenticals of variable

// void main(){
//   final e = Example();
//   final e2 = Example();
//
//   print(identical(e, e2));
//
//
// }
//
// class Example{
//    void inside(){
//        print("calling example method");
//    }
// }

// class Cara {
//   int _a = 20;
//   int get aFromCara => _a;
// }
//
// class Carb extends Cara {
//   int _a = 70;
// }
//
// class Carc extends Carb {
//   void showData() {
//     print(aFromCara);
//   }
// }
//
// void main() {
//   var c1 = Carc();
//   c1.showData();
// }

// this inheritace
// void main(){
//   var e2 = Example3();
//
// }
//
// class Example{
//   int a = 10;
//
// }
//
// class Example2 extends Example{
//
// }
//
// class Example3 extends Example2{
//     Example3(){
//        print(this.a);
//     }
// }

// void main(){
//
// }
//
// class Example_p1{
//
// }
//
// class Example_p2{
//
// }
//
// class Example_c extends Example_p2{
//
// }


// multilevel inheritance
// class A{
//    A(){
//       print("A constructer");
//    }
// }
// class B extends A{
//    B(){
//      print("B constructer");
//    }
//    void show(){
//        print("method from B");
//    }
// }
//
// class C extends B{
//   C(){
//     print("c constructer");
//   }
//   @override
//   void show(){
//     super.show();
//     print("method from C");
//   }
// }
//
// void main(){
//   C c = new C();
//   c.show();
// }

// Polymorphism :-“Many forms” – ek hi interface/parent class ka reference
// alag-alag subclass objects ko represent kar sakta hai,aur call hone par actual object
// ke hisaab se method execute hoti hai.

// Types of Polymorphism (OOP concept)

// Compile-time (Method Overloading) not supported
// Dart me traditional method overloading (same method name, different parameter list) directly support nahi hoti.
// Iske badle tum optional/named parameters use karke similar result le sakte ho.


// Run-time (Method Overriding)
// Dart me main polymorphism yahi hai.
// Parent class ka reference child object ko hold kare aur overridden method call kare → dynamic dispatch.


// Example – Runtime Polymorphism

// class Animal{
//   void sound(){
//     print("Animal makes sound");
//   }
// }
//
// class Dog extends Animal{
//   @override
//   void sound(){
//     print("Dogs barks");
//   }
// }
//
// class Cat extends Dog{
//   @override
//   void sound(){
//      print("cat meom");
//   }
//
// }
//
// void main(){
//    Animal c= new Cat();
//
// }

// Polymorphism by interface


// abstract class Shape{
//   double area();
// }
//
// class Circle implements Shape {
//   final double radius;
//   Circle(this.radius);
//   @override
//   double area() => 3.14 * radius * radius;
// }
//
// class Square implements Shape {
//   final double side;
//   Square(this.side);
//   @override
//   double area() => side * side;
// }
//
// void main(){
//   var s = Square(3.5);
//   print(s.area());
//
// }

// passing the value from child to parent using super cobstructer inheritance
// class A{
//   A(String a){
//      print(a);
//   }
// }
//
// class B extends A{
//     B():super("yash");
//
// }
//
// void main(){
//   B b = new B();
// }


// Abstraction in dart :-
//
// abstract class Vehicle{
//   void start();
//   void stop(){
//      print("stop Vehicle");
//   }
//
// }
//
// class Bike extends Vehicle{
//   @override
//    void start(){
//      print("start");
//    }
// }
//
// void main(){
//    Bike b = new Bike();
//    b.start();
//    b.stop();
// }
//

// interface in dart
//  class A{
//     void show(){}
//  }
//  class B implements A{
//   void show(){
//        print("show");
//   }
//
//   void hide(){
//     print("hide");
//   }
//  }
//  void main(){
//     A b = new B();
//     b.show();
//  }

// mixin
// mixin Flyer{
//    void fly(){
//       print("flying in air");
//    }
// }mixin Run{
//   void fly(){
//     print("flying on road");
//   }
// }
// class A with Flyer,Run{
//     void run(){
//
//     }
// }
// void main(){
//   A().fly();
// }

// on keyword (Type Restriction)
// mixin fly on A{
//     void flyer(){
//       print("flyyying...");
//     }
// }
// class B{
//
// }
// class A{
//
// }
// void main(){
//
//
// }
//

// getter and setter
// void main(){
//   var  e = Example();
//   e.setter = 100;
//   print(e._balance);
// }
//
// class Example{
//   int _balance = 0;
//
//
//   int get balance => _balance;
//
//   set setter(int value){
//     if(value > 0){
//
//     }
//
//   }
//
// }

// static

// class Student {
//
//   int totalStudents = 0;
//   String name;
//   Student(this.name) {
//     totalStudents++;
//   }
//
//
//    void showTotal() {
//     print("Total students: $totalStudents");
//   }
// }
//
// void main() {
//   var s1 = Student("Aman");
//   var s2 = Student("Neha");
//   var s3 = Student("Ravi");
//   s1.showTotal();
//   print(s1.totalStudents);
// }


// class Example{
//   String name;
//   static int total = 0;
//   Example(this.name){
//     total++;
//   }
//   static showtotal(){
//     print(total);
//   }
// }
// void main(){
//   var e = Example("yash");
//   var e1 = Example("rahul");
//   var e2 = Example("amit");
//   print(Example.total);
//
// }

// factory constructor

// class Logger {
//
//   static final Logger _instance = Logger._internal();
//
//
//   Logger._internal();
//
//   factory Logger() {
//     return _instance;
//   }
//
//   void log(String msg) => print(msg);
// }
//
// void main() {
//   var l1 = Logger();
//   var l2 = Logger();
//
//
//   print(identical(l1, l2));
// }
//

// void main(){
//  var e = Example();
//  Example.guest(30);
// }
//
// class Example{
//   int value = 0;
//   Example(){
//      print(value+1);
//   }
//
//   Example.guest(this.value){
//     print(value+1);
//   }
// }

