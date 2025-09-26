// async and await
// void main() async{
//    var e = Example();
//    print(await e.fetch());
//    print("world");
// }
//
// class Example{
//    Future<String> fetch() async{
//      await Future.delayed(Duration(seconds: 2));
//      return "hello";
//    }
// }
//
// import 'dart:async';
//
// void main(){
//
//   Timer(Duration(seconds: 2),(){
//      print("hellow from timer");
//   });
// }


// creating a Future
// 1) using a constructure

// void main() async{
//   print(await fetch());
// }
//
// Future<int> fetch() async{
//   return await Future((){
//      return 42;
//   });
// }

// 2) Immediate Value or Error

// void main(){
//   Future.value();
//   Future.error("error aa gyi");
// }

// 3)Consuming Futures

// void main() async{
//   fetchdata().then((data){
//      print(data);
//   }).catchError((e){
//      print(e);
//   });
// }
//
// Future<num> fetchdata() async {
//   await Future.delayed(Duration(seconds: 2), () {
//     print("helll");
//   });
//   return 10;
// }

// Future.wait(listOfFutures)

// void main(){
//   final data = Future.wait([
//      Future.delayed(Duration(seconds: 2),(){
//        print("first");
//      }),
//     Future.delayed(Duration(microseconds: 500),(){
//       return Future.error("error");
//     }),
//     Future.delayed(Duration(seconds: 1),(){
//       print("Third");
//     }),
//   ]);
// }

// Future.any(listOfFutures)

// void main(){
//   final data = Future.any([
//   Future.delayed(Duration(microseconds: 200),(){
//        print("first");
//      }),
//     Future.delayed(Duration(microseconds: 500),(){
//         Future.error("error");
//     }),
//     Future.delayed(Duration(seconds: 1),(){
//       print("Third");
//     }),
//   ]);
// }

// Future.microtask(callback)
// void main() {
//   Future.microtask(() => print('microtask'));
//   Future(() => print('event'));
//   print('sync');
// }

// timeout(duration, onTimeout)

// void main() {
//   Future.delayed(Duration(seconds:2), () => print('late'))
//       .timeout(Duration(seconds: 1), onTimeout: () => 'default')
//       .then(print);
// }

// timeout(duration, onTimeout) async and  await
// void main() async {
//
//     final result = await Future.delayed(Duration(seconds: 1), () => print("late"))
//         .timeout(Duration(seconds: 2),onTimeout: () => print('default'));
//
// }



// Async/Await
// Basic async Function
// Future<String> greet() async {
//   return "Hello World";
// }
//
// void main() async {
//   final msg = await greet();
//   print(msg); // Hello World
// }

// Waiting for a Delayed Result : await pauses inside the async function until the Future completes.

// Future<int> fetchNumber() async {
//   await Future.delayed(Duration(seconds: 1));
//   return 2;
// }
//
// void main() async{
//   print("1");
//   print(await fetchNumber());
//
//   print("3");
//
// }

// Multiple Awaits (Sequential)

// Future fetchdata() async{
//     await Future.delayed(Duration(milliseconds: 200),(){
//          print("1");
//     });
//     await Future.delayed(Duration(milliseconds: 200),(){
//       print("2");
//     });
// }
// void main() async{
//   await fetchdata();
// }


// Run in Parallel with Future.wait
// import  'dart:convert';
// import 'package:http/http.dart' as http;
//
//
// Future<void> fetchdata() async{
//   final url = Uri.parse("https://jsonplaceholder.typicode.com/todos");
//   final response = await http.get(url,
//     headers: {"User-Agent": "Dart/3.0", "Accept": "application/json"});
//    if (response.statusCode == 200) {
//     final data = jsonDecode(response.body);
//     print(data);
//   } else {
//     print('Request failed with status: ${response.statusCode}');
//   }
//
// }
// void main() async{
//    await fetchdata();
// }


//stream
// void main() {
//   final stream = Stream.fromIterable([10, 20, 30]);
//   stream.listen(
//         (data) => print('Data: $data'),
//     onError: (e) => print('Error: $e'),
//     onDone: () => print('Completed'),
//     cancelOnError: false,
//   );
// }

// import 'dart:async';
//
// void main() {
//   // Create a StreamController
//   final controller = StreamController<int>();
//
//   // Get the Stream from the controller
//   final stream = controller.stream;
//
//   // Listen to the stream
//   stream.listen(
//         (data) {
//       print('Received data: $data');
//     },
//     onError: (error) {
//       print('Received error: $error');
//     },
//     onDone: () {
//       print('Stream is done.');
//     },
//   );
//
//   // Add data to the stream
//   controller.add(1);
//   controller.add(2);
//   controller.add(3);
//
//   // Add an error to the stream
//   // controller.addError('Something went wrong!');
//
//   // Close the stream
//   controller.close();
// }
//

// void main(){
//   final sub = Stream.periodic(Duration(seconds: 1), (i) => i).listen(print);
//   Future.delayed(Duration(seconds: 3), () => sub.pause());
//   Future.delayed(Duration(seconds: 5), () => sub.resume());
//   Future.delayed(Duration(seconds: 7), () => sub.cancel());
//
// }
// import  'dart:convert';
// void main(){
//   const jsonString = '''
//     {"id":1,"title":"Hello","tags":["dart","json"],"active":true}
//   ''';
//
//   Map<String,dynamic > data = jsonDecode(jsonString);
//   print(data["title"]);
//
// }

void main(){


}
