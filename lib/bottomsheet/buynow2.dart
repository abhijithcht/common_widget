import 'package:flutter/material.dart';

class BuyNow extends StatefulWidget {
  const BuyNow({Key? key}) : super(key: key);

  @override
  State<BuyNow> createState() => _BuyNowState();
}

class _BuyNowState extends State<BuyNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: SizedBox(
          height: 70,
          width: 170,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
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
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              const Positioned(
                                child: SizedBox(
                                  height: 100,
                                  child: Center(
                                    child: Text(
                                      'Select Size',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  child: Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(Icons.close),
                                ),
                              ))
                            ],
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                          const SizedBox(
                            height: 100,
                            child: Center(
                              child: Text(
                                'Select Return Type',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: Colors.pink.shade50,
                                      border: Border.all(color: Colors.pink),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'All New Items',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 200,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: Colors.pink.shade50,
                                      border: Border.all(color: Colors.pink),
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '\$139',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: Colors.blue.shade50,
                                      border: Border.all(color: Colors.blue),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Only Return Items',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: Colors.blue.shade50,
                                      border: Border.all(color: Colors.blue),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '\$135',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: Colors.blue.shade50,
                                      border: Border.all(color: Colors.blue),
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Special Offer',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Container(
                            height: 300,
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Text(
                'Button',
                style: TextStyle(
                  fontSize: 25,
                ),
              )),
        ),
      ),
    );
  }
}
