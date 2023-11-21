 import 'package:flutter/material.dart';

import 'Cart_page.dart';
import 'package:wibe/Component/list_item.dart';

const List<String> ImageItem = <String>["https://cs.p-static.ru/image/6076601/original-925x925-fit.jpg", "https://basket-08.wb.ru/vol1155/part115500/115500239/images/c516x688/1.webp", "https://avatars.mds.yandex.net/get-mpic/5302484/img_id1139354454592599679.jpeg/600x800", "https://basket-03.wb.ru/vol411/part41175/41175635/images/c516x688/1.webp", "https://avatars.mds.yandex.net/get-mpic/10815509/img_id6932608833162300477.jpeg/600x800", "https://avatars.mds.yandex.net/get-mpic/4606255/img_id7138767122939020067.jpeg/600x800", "https://cdn.vseinstrumenti.ru/images/goods/spetsodezhda-i-siz/vlagozaschitnaya-odezhda/1625957/560x504/52903103.jpg", "https://avatars.mds.yandex.net/get-mpic/3698270/img_id5209645723267088248.jpeg/600x800", "https://basket-03.wb.ru/vol320/part32072/32072176/images/c516x688/1.webp", "https://avatars.mds.yandex.net/get-mpic/4448948/img_id8431498464114594910.jpeg/600x800"];
const List<String> NameItem = <String>["Берцы", "Очиститель стекол", "Набор сантехнических прокладок", "Зонт компактный легкий складной", "Джинцы", "Лего машинка", "Плащ", "Клавиатура", "Шнурки для обуви", "Шампунь"];
const List<String> CountText = <String>["650 Руб.", "337 Руб.", "581 Руб.","375 Руб.","447 Руб.","30000 Руб.","200 Руб.","500 Руб.","145 Руб.", "260Руб."];
const List<String> DescItem = <String>["Описание которое могло бы быть здесь!","Описание которое могло бы быть здесь!","Описание которое могло бы быть здесь!","Описание которое могло бы быть здесь!","Описание которое могло бы быть здесь!","Описание которое могло бы быть здесь!","Описание которое могло бы быть здесь!","Описание которое могло бы быть здесь!","Описание которое могло бы быть здесь!","Описание которое могло бы быть здесь!",];


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(255, 57, 56, 51),
        title: const Center(
          child: Text('wildberries', style: TextStyle(color: Colors.white)),
        ),
        actions: [
          IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'Открыть корзину',
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CartPage()))
          ),
        ],
        backgroundColor: Colors.deepPurple,

      ),


      body:
      Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(1.0),
              height: MediaQuery.of(context).size.height * 0.85,
              child: GridView.builder(
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemCount: NameItem.length,
                  itemBuilder: (BuildContext context, int index)

                  {
                    return ListItem(NameItem: NameItem[index], ImageItem: ImageItem[index], CountText: CountText[index], DescItem: DescItem[index]);
                  }
              ),
            ),

          ]

      ),
    );
  }
}