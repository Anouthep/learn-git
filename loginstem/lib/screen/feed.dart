import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  int number = 0;
  bool clickeFavor = false;
  void initSate() {
    clickeFavor = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("feed page")),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: 500,
            height: 300,
            color: const Color.fromARGB(255, 22, 176, 223),
            child: Image.network('/assets/images/jin2.webp'),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //ໄອຄອນປຸຸ່ມຫົວໃຈ + ປຸ່ມຄອມເມັ້ນ
                Row(
                  children: [
                    //ປູ່່ມໄອຄອນຫົວໃຈ
                    IconButton(
                      onPressed: () {
                        setState(() {
                          clickeFavor = !clickeFavor;
                          print(clickeFavor);
                        });
                      },
                      icon: clickeFavor
                          ? Icon(Icons.favorite_outline_outlined)
                          : Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                    )
                    //ປຸ່ມໄອຄອມເມັ້ນ
                  ],
                ),
                //ຈຳນວນ
                const Text(
                  "100M likes",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
