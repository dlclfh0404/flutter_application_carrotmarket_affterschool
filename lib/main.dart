import 'package:flutter/material.dart';
import 'package:flutter_application_carrotmarket/detail_page.dart';
import 'carrot_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<CarrotItem> items = [];
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    items.add(CarrotItem(title: '팝니다.', addr: '우리집', price: 1000));
    items.add(CarrotItem(title: '팝니다.', addr: '우리집', price: 10300));
    items.add(CarrotItem(title: '팝니다.', addr: '우리집', price: 10100));
    items.add(CarrotItem(title: '팝니다.', addr: '우리집', price: 101200));
    items.add(CarrotItem(title: '팝니다.', addr: '우리집', price: 103100));
    items.add(CarrotItem(title: '팝니다.', addr: '우리집', price: 101400));
    items.add(CarrotItem(title: '팝니다.', addr: '우리집', price: 101300));
    items.add(CarrotItem(title: '팝니다.', addr: '우리집', price: 10120));
    items.add(CarrotItem(title: '팝니다.', addr: '우리집', price: 10300));

    return MaterialApp(
      home: HomePage(items: items),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.items,
  });

  final List<CarrotItem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Malbob market'),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        // 스크롤 쓰는법
        child: Column(
          children: [
            for (var item in items)
              GestureDetector(
                  // 행동 감지
                  onTap: () {
                    // 무엇을 감지할건지
                    Navigator.push(
                        // 길잡이 역활
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(price: item.price),
                        ));
                  }, // 동작=기능=function=method
                  child: item)
          ],
        ),
      ),
    );
  }
}
