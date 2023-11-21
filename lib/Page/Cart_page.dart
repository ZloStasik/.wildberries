import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(255, 57, 56, 51),
        title: const Center(
            child: Text('Корзина')),
        backgroundColor: Colors.deepPurpleAccent,
      ),

      body:
      Container(

          margin: const EdgeInsets.all(8.0),
          height: MediaQuery.of(context).size.height * 1,

          decoration: BoxDecoration(

            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
              child: Column(
                  children: <Widget>[
                    Text("Описание"),
                  ]
              )
          )
      ),
    );
  }
}
