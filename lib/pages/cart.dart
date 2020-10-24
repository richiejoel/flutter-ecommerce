import 'package:flutter/material.dart';

//my imports
import 'package:shopapp/components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        centerTitle: false,
        title: Text('Shopping Cart'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),

      body: new Card_Products(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Total"),
                subtitle: Text("\$230"),
              ),
            ),
            Expanded(
              child: MaterialButton(onPressed: (){},
                color: Colors.red,
              child: Text(
                "Check Out",
                style: TextStyle(
                    color: Colors.white),
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
