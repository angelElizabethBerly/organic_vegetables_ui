import 'package:flutter/material.dart';

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black12)),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              color: Colors.greenAccent.shade100,
              child: Icon(Icons.favorite_border),
            ),
          ),
          Center(
            child: Container(
              height: 50,
              width: 50,
              child: Image.network(
                  "https://images.pexels.com/photos/1132047/pexels-photo-1132047.jpeg?auto=compress&cs=tinysrgb&w=600"),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
                5, (index) => Icon(Icons.star, color: Colors.amber, size: 10)),
          ),
          Text(
            "Red Label Tea Leaf, 1kg",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: TextSpan(
                      text: "\$12 ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      children: [
                    TextSpan(
                      text: "\$28 ",
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 5,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    TextSpan(
                      text: " 5% off",
                      style: TextStyle(
                          color: Color(0xff288d63),
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    )
                  ])),
              Container(
                padding: EdgeInsets.all(5),
                color: Color(0xff288d63),
                child: Icon(Icons.shopping_bag_outlined,
                    color: Colors.white, size: 15),
              )
            ],
          )
        ],
      ),
    );
  }
}
