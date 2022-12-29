import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text('Lottery App')
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Center(
            child:
            Text('Lottery winning number is 5'),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: x == 5 ? 600: 250,
              width: 300,
              decoration: BoxDecoration(
                color: x == 5 ? Colors.teal : Colors.grey.withOpacity(.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x == 5 ?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const Icon(Icons.done_all , color: Colors.green, size: 30),
                    const SizedBox(height: 10,),
                    Text('Congratulation You win the lottery , your number is $x',textAlign: TextAlign.center,),
                  ],
                ):

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const Icon(Icons.error , color: Colors.red , size: 30),
                    const SizedBox(height: 10,),
                    Text('Better Luck next time your number is $x \ntry again' , textAlign: TextAlign.center,),
                  ],
                ),
              ),
            )

          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(6);
            print(x);
            setState(() {

            });
          },
          child: const Icon( Icons.refresh),
        ),
      ),
    );
  }
}
