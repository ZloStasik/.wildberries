import 'package:flutter/material.dart';

import 'Cart_page.dart';

const List<String> ImageItem = <String>["https://basket-04.wb.ru/vol562/part56236/56236410/images/c516x688/1.webp", "https://basket-08.wb.ru/vol1155/part115500/115500239/images/c516x688/1.webp", "https://basket-10.wb.ru/vol1529/part152971/152971244/images/c516x688/1.webp", "https://basket-03.wb.ru/vol411/part41175/41175635/images/c516x688/1.webp", "https://basket-10.wb.ru/vol1569/part156949/156949682/images/c516x688/1.webp", "https://basket-05.wb.ru/vol869/part86900/86900899/images/c516x688/1.webp", "https://basket-01.wb.ru/vol92/part9285/9285253/images/c516x688/1.webp", "https://basket-10.wb.ru/vol1388/part138834/138834549/images/c516x688/1.webp", "https://basket-03.wb.ru/vol320/part32072/32072176/images/c516x688/1.webp", "https://basket-12.wb.ru/vol1685/part168587/168587709/images/c516x688/1.webp"];
const List<String> NameItem = <String>["Влажные детские салфетки", "Очиститель стекол", "Многофункциональные плоскогубцы", "Зонт компактный легкий складной", "Спортивные брюки женские", "RGB лампа Закат с пультом", "Шапка зимняя вязаная", "Наушники беспроводные Air 2", "Шнурки для обуви", "Camon 20 8+256GB"];
const List<String> CountText = <String>["412 Руб.", "337 Руб.", "581 Руб.","375 Руб.","447 Руб.","469 Руб.","660 Руб.","1045 Руб.","145 Руб.", "12952 Руб."];
const List<String> DescItem = <String>["Описание которое могло бы быть здесь!"];


class SecondPage extends StatelessWidget {

  final String ImageItem;
  final String NameItem;
  final String CountText;
  final String DescItem;

  const SecondPage ({super.key,
    required this.ImageItem,
    required this.NameItem,
    required this.CountText,
    required this.DescItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(255, 57, 56, 51),
        title: const Center(
            child: Text('Товар')),
        backgroundColor: Colors.deepPurpleAccent,
      ),

      body:
      Container(
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(8.0),
          ),
    child: Padding(
    padding: EdgeInsets.only(top: 10, bottom:10, left:10, right:10),
              child: Column(
                  children: <Widget>[
                    Expanded(
                        child: Image.network(ImageItem,  width: MediaQuery.of(context).size.width * 1, height: MediaQuery.of(context).size.width * 0.2),
                        flex:10
                    ),
                    Expanded(
                        child: Text(NameItem, style: TextStyle(fontSize: 18, color: Colors.white),),
                        flex:3
                    ),
                    Expanded(
                        child: Text(DescItem, style: TextStyle(fontSize: 18, color: Colors.white),),
                        flex:3
                    ),
                    Expanded(
                        child: Row (
                            children: [
                              Text(CountText, style: TextStyle(fontSize: 18, color: Colors.white)),

                              ButtonTheme(
                                  minWidth: MediaQuery.of(context).size.width * 0.2,
                                  child: IconButton(
                                      color: Colors.black,
                                      icon: const Icon(Icons.shopping_cart),
                                      tooltip: 'Открыть корзину',
                                      onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CartPage()))
                                  )
                              ),
                            ]
                        ),
                        flex:3
                    ),
                  ]
              )
    )
      ),
    );
  }
}
