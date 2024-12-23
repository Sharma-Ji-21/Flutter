import 'package:flutter/material.dart';
import 'package:flutter_app/base/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
      // // this is material app which gives life to the application
      // // material app holds every thing(hods the screen)  and scaffold is something which we already see on the screen
      // home: Scaffold(
      //   // Scaffold holds every thing as we can pass only one widget at once
      //   // but in Scaffold we can store multiple
      //   appBar: AppBar(
      //     backgroundColor: Colors.red,
      //     title: const Center(child: Text("Flutter Title")),
      //   ), // it basically works like header of the application
      //     body: const Center(child: Text("Hello Flutter")),
      // ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   // how it looks.
//
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//   void _decrementCounter() {
//     setState(() {
//       _counter--;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//         FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//         ),
//         FloatingActionButton(
//         onPressed: _decrementCounter,
//         tooltip: 'Decrement',
//         child: const Icon(Icons.remove),
//         )
//         ],
//       ),
//     );
//   }
// }
