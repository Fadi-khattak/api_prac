import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  String image;
  String title;
  String price;
  ProductCard({required this.image,required this.title,required this.price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
            child: Image.network(image),
          ),
          Expanded(
            child: Text(
              title, style: const TextStyle(color: Colors.black,
                fontSize: 16),),
          ),
          Expanded(
            child: Text("\$ $price"),
          )
        ],
      ),
    );
  }
}
