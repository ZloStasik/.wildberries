import 'package:flutter/material.dart';

import 'package:wibe/Page/Second_page.dart';
import 'package:wibe/Page/Cart_page.dart';

class ListItem extends StatelessWidget {

  final String ImageItem;
  final String NameItem;
  final String CountText;
  final String DescItem;

  const ListItem({
    super.key,
    required this.ImageItem,
    required this.NameItem,
    required this.CountText,
    required this.DescItem});

  @override  Widget build(BuildContext context) {
    return
      ButtonTheme(
          height: 1,
        padding: const EdgeInsets.all(16.0),
          child: ElevatedButton ( style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurpleAccent,),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1),
              ),
            ),
          ),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(ImageItem: ImageItem, NameItem: NameItem, CountText: CountText, DescItem: DescItem))),


        child: Center(
            child: Column(
                children: <Widget>[
            Expanded(
                  child: Image.network(ImageItem,  width: MediaQuery.of(context).size.width * 0.8, height: MediaQuery.of(context).size.width * 0.2),
                      flex:10
                  ),
                  Expanded(
                      child: Text(NameItem, style: TextStyle(fontSize: 12, color: Colors.white),),
                      flex:3
                  ),
                  Expanded(
                      child: Row (
                        children: [
                            Text(CountText, style: TextStyle(fontSize: 12, color: Colors.white)),

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