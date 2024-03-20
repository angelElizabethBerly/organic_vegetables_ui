import 'package:flutter/material.dart';

class CheckoutWidget extends StatelessWidget {
  const CheckoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black12)),
          padding: EdgeInsets.only(top: 20, bottom: 15, right: 5, left: 20),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                child: Image.network(
                    "https://media.istockphoto.com/id/1195954829/photo/cashew-nuts-in-basket-on-black-background.jpg?b=1&s=612x612&w=0&k=20&c=sRLDKlAy-klYrkKQdQs3KBYN0rW8MqBTDVOjlCRcTDQ=",
                    fit: BoxFit.fill),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "kalbavi splits keshew",
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(height: 5),
                    RichText(
                        text: TextSpan(
                            text: "\$12  ",
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
                                fontSize: 12),
                          ),
                          TextSpan(
                            text: "  5% off",
                            style: TextStyle(
                                color: Color(0xff288d63),
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          )
                        ])),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.green)),
                          child: Text(
                            "-",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "1",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(width: 10),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.green)),
                          child: Text(
                            "+",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.greenAccent.shade100,
            ),
            child: Icon(Icons.delete),
          ),
        ),
      ],
    );
  }
}
