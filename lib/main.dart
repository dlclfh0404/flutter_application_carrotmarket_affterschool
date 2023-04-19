import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<CarrotItem> items = [];
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    items.add(CarrotItem(title: '팝니다.', addr: '우리집', price: 1000));
    items.add(CarrotItem(title: '팝니다.', addr: '우리집', price: 1000));
    items.add(CarrotItem(title: '팝니다.', addr: '우리집', price: 1000));
    items.add(CarrotItem(title: '팝니다.', addr: '우리집', price: 1000));
    items.add(CarrotItem(title: '팝니다.', addr: '우리집', price: 1000));
    items.add(CarrotItem(title: '팝니다.', addr: '우리집', price: 1000));
    items.add(CarrotItem(title: '팝니다.', addr: '우리집', price: 1000));
    items.add(CarrotItem(title: '팝니다.', addr: '우리집', price: 1000));
    items.add(CarrotItem(title: '팝니다.', addr: '우리집', price: 1000));

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Malbob market'),
          backgroundColor: Colors.orange,
        ),
        body: SingleChildScrollView(
          // 스크롤 쓰는법
          child: Column(
            children: [for (var item in items) item],
          ),
        ),
      ),
    );
  }
}

class CarrotItem extends StatelessWidget {
  String title, addr;
  int price;

  CarrotItem({
    required this.title,
    required this.addr,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:
                  const DecorationImage(image: AssetImage('images/pizza.jpg'))),
        ),
        const SizedBox(
          width: 20,
        ),
        Flexible(
          flex: 1,
          child: SizedBox(
            height: 150,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                Text(addr,
                    style: const TextStyle(
                      decoration: TextDecoration.underline,
                    )),
                Text('$price'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [Icon(Icons.heart_broken), Text('12')],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
