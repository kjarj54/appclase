import 'package:appclase/models/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final ValueChanged<Product> onSelected;
  const ProductCard({required this.product, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: <BoxShadow>[
          BoxShadow(color: Color(0xfff8f8f8), blurRadius: 15, spreadRadius: 10),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(height: 15),
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 144, 212, 138),
                ),
                Image.asset(product.imageUrl),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
