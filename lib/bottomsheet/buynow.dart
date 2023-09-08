import 'package:flutter/material.dart';

class ItemsSelect extends StatefulWidget {
  const ItemsSelect({Key? key}) : super(key: key);

  @override
  State<ItemsSelect> createState() => _ItemsSelectState();
}

class _ItemsSelectState extends State<ItemsSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BOTTOM SHEET'),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: 70,
          width: 170,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.greenAccent,
              side: const BorderSide(
                color: Colors.black,
                width: 3,
              ),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return SingleChildScrollView(
                    child: Stack(
                      children: [
                        const Positioned(
                          child: SizedBox(
                            height: 500,
                            width: double.maxFinite,
                            child: Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 140),
                                  child: Text(
                                    'Select Return Type',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                            ),
                            height: 100,
                            width: double.maxFinite,
                            child: const Center(
                                child: Text(
                              'Select Size',
                              style: TextStyle(fontSize: 20),
                            )),
                          ),
                        ),
                        // Divider(
                        //   height: 2,
                        //   color: Colors.red,
                        // ),
                        Positioned(
                          top: 200,
                          left: 30,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.pink.shade50,
                              border: Border.all(color: Colors.pink),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 200,
                            width: 200,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('All New Items'),
                                Divider(
                                  color: Colors.pink,
                                ),
                                Text('\$139')
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 200,
                          right: 30,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 200,
                            width: 200,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Only Return Items'),
                                Divider(
                                  color: Colors.blue,
                                ),
                                Text('\$135'),
                                Divider(
                                  color: Colors.blue,
                                ),
                                Text('Special Offer')
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              );
            },
            child: const Text(
              'Buy Now',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
