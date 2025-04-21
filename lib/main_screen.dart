import 'package:appclase/models/data.dart';
import 'package:appclase/themes/theme.dart';
import 'package:appclase/widgets/product_card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _appBar() {
    return SafeArea(
      child: Container(
        color: Color(0xFFB2DFDB),
        padding: AppTheme.padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RotatedBox(
              quarterTurns: 4,
              child: Icon(Icons.add_ic_call, size: 30, color: Colors.black),
            ),
            Text("Mi app", style: TextStyle(fontSize: 30, color: Colors.black)),
            Icon(Icons.more_vert_sharp, size: 30, color: Colors.black),
          ],
        ),
      ),
    );
  }

  Widget _productWidget() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 100,
      height: 100,
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 30,
          crossAxisSpacing: 20,
        ),
        padding: EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        children:
            AppData.products
                .map(
                  (product) => ProductCard(
                    product: product,
                    onSelected: (product) => print(product.name),
                  ),
                )
                .toList(),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Column(children: [_appBar(), _productWidget()])),
    );
  }
}
