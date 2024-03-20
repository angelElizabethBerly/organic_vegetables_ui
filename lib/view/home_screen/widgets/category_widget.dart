import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.black12),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            child: Image.network(
                "https://images.pexels.com/photos/1132047/pexels-photo-1132047.jpeg?auto=compress&cs=tinysrgb&w=600"),
          ),
          Text(
            "Fruits",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
          )
        ],
      ),
    );
  }
}
