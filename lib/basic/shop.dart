import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

const TextStyle _style = TextStyle(
  color: Colors.white,
  fontSize: 20,
);

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('S H O P'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.purple,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Text(
              'Hello',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Latest',
                    style: _style,
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Popular',
                    style: _style,
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Brand',
                    style: _style,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 60,
            width: 140,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                'My Products',
                style: _style,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 300,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Name', style: _style),
                    Text('Book', style: _style),
                    Text('Pen', style: _style),
                    Text('Pencil', style: _style)
                  ],
                ),
              ),
              Container(
                height: 300,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Price', style: _style),
                    Text('50', style: _style),
                    Text('20', style: _style),
                    Text('10', style: _style)
                  ],
                ),
              ),
              Container(
                height: 300,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Quantity', style: _style),
                    Text('2', style: _style),
                    Text('5', style: _style),
                    Text('10', style: _style)
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
