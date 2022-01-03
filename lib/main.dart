import 'package:customanimation/profile_animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProfileAnimaiton(
          duration: const Duration(milliseconds: 400),
          topFirstWidet: box(Colors.pink),
          topSecondWidget: box(Colors.brown),
          bottomFirstWidget: box(Colors.purple),
          bottomSecondWidet: box(Colors.black),
          bottomThirdWidget: box(Colors.red),
          bottomFourthWidget: box(Colors.green),
          topFirstTextWidget: Text('ali'),
          topSecondTextWidget: Text('shan'),
          bottomWidgetsPadding: 10,
          bottomWidetsSize: 70,
          height: 500,
          topWidetsSize: 100,
bottomFifthWidget: box(Colors.black),
        ));
  }
}

DecoratedBox box(Color color) {
  return DecoratedBox(
    decoration: BoxDecoration(color: color, shape: BoxShape.circle),
  );
}
