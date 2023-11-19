import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'DASHBOARD',
        ),
        centerTitle: true,
      ),
      body:

          //Main Card
          Column(
        children: [
          Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(32),
            width: double.maxFinite,
            height: 124,
            color: Colors.white30,
            child: Column(children: [
              Row(
                children: [Text('TOTAL BALANCE')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("12356,12"), Icon(Icons.wallet)],
              ),
            ]),
          ),
          //Secondary cards

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  height: 56,
                  width: 148,
                  color: Colors.white30,
                  child: Column(children: [
                    Text('TOTAL INCOME'),
                    Text('+ 16324,16'),
                  ]),
                ),
                Container(
                    padding: EdgeInsets.all(8),
                    height: 56,
                    width: 148,
                    color: Colors.white30,
                    child: Column(
                      children: [
                        Text('TOTAL EXPENSE'),
                        Text('- 6450,15'),
                      ],
                    )),
              ],
            ),
          ),

          SizedBox(
            height: 8,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent transactions'),
                Text('View All'),
              ],
            ),
          )
        ],
      ),

      //Fab button to to register new transaction
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      //
    );
  }
}
