// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:organic_vegetables_ui/view/checkout_screen/checkout_screen.dart';
import 'package:organic_vegetables_ui/view/product_screen/widgets/product_details.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Product Details",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black38)),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.greenAccent.shade100,
                      ),
                      child: Icon(Icons.refresh),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          "https://images.pexels.com/photos/1132047/pexels-photo-1132047.jpeg?auto=compress&cs=tinysrgb&w=600"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(
                        5,
                        (index) => Row(
                          children: [
                            CircleAvatar(
                                radius: index != 2 ? 3 : 5,
                                backgroundColor:
                                    index != 2 ? Colors.black26 : Colors.green),
                            SizedBox(width: 5)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Red Label Tea",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        color: Color(0xff288d63),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "4.95 ",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(Icons.star, color: Colors.white, size: 15),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "95 ratings",
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
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
                                  decorationThickness: 3,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            TextSpan(
                              text: " 5% off",
                              style: TextStyle(
                                  color: Color(0xff288d63),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ])),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black38)),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Details",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Divider(),
                  ProductDetails(criteria: "Brand", detail: "Red Label"),
                  SizedBox(height: 15),
                  ProductDetails(criteria: "Type", detail: "Black Tea"),
                  SizedBox(height: 15),
                  ProductDetails(criteria: "Quantity", detail: "7 KG"),
                  SizedBox(height: 15),
                  ProductDetails(criteria: "Shelf life", detail: "12 Months"),
                  SizedBox(height: 15),
                  ProductDetails(criteria: "Organic", detail: "No"),
                  SizedBox(height: 15),
                  ProductDetails(criteria: "Flavor", detail: "plain"),
                  SizedBox(height: 15),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "More Details",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xff288d63)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.greenAccent.shade100,
              ),
              child: Icon(Icons.favorite_border, size: 25),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckoutScreen(),
                    ));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 110),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff288d63)),
                child: Text(
                  "ADD TO CART",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
