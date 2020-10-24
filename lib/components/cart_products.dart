import 'package:flutter/material.dart';

class Card_Products extends StatefulWidget {
  @override
  _Card_ProductsState createState() => _Card_ProductsState();
}

class _Card_ProductsState extends State<Card_Products> {
  var productsOnTheCart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "price": 60,
      "size": "M",
      "color": "Red",
      "quantity": 1
    },
    {
      "name": "Hill",
      "picture": "images/products/hills1.jpeg",
      "price": 48,
      "size": "M",
      "color": "Red",
      "quantity": 1
    },
    {
      "name": "Pants",
      "picture": "images/products/pants2.jpeg",
      "price": 110,
      "size": "M",
      "color": "Red",
      "quantity": 1
    },
    {
      "name": "Shoes",
      "picture": "images/products/shoe1.jpg",
      "price": 110,
      "size": "M",
      "color": "Red",
      "quantity": 1
    },
    {
      "name": "Skirts",
      "picture": "images/products/skt1.jpeg",
      "price": 110,
      "size": "M",
      "color": "Red",
      "quantity": 1
    },
    {
      "name": "Skirts",
      "picture": "images/products/skt1.jpeg",
      "price": 110,
      "size": "M",
      "color": "Red",
      "quantity": 1
    },
    {
      "name": "Skirts",
      "picture": "images/products/skt1.jpeg",
      "price": 110,
      "size": "M",
      "color": "Red",
      "quantity": 1
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: productsOnTheCart.length,
        itemBuilder: (context, index) {
          return Single_Cart_Product(
            product_name: productsOnTheCart[index]['name'],
            product_price: productsOnTheCart[index]['price'],
            product_picture: productsOnTheCart[index]['picture'],
            product_color: productsOnTheCart[index]['color'],
            product_quantity: productsOnTheCart[index]['quantity'],
            product_size: productsOnTheCart[index]['size'],
          );
        });
  }
}

class Single_Cart_Product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_price;
  final product_size;
  final product_color;
  final product_quantity;

  Single_Cart_Product(
      {this.product_name,
      this.product_price,
      this.product_picture,
      this.product_color,
      this.product_quantity,
      this.product_size});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          product_picture,
          width: 50.0,
          height: 80.0,
          fit: BoxFit.contain,
        ),
        title: Text(product_name),
        subtitle: Column(
          children: <Widget>[
            //Row Inside of column
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    product_size,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text("Color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    product_color,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            Container(

              alignment: Alignment.topLeft,
              child: Text(
                "\$${product_price}",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0),
              ),
            )
          ],
        ),
        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
            children: <Widget>[
              IconButton(icon: Icon(Icons.arrow_drop_up), iconSize: 38, onPressed: (){},),
             Text("${product_quantity}", style: TextStyle(fontSize: 25.0),),
              IconButton(icon: Icon(Icons.arrow_drop_down), iconSize: 38, onPressed: (){},),
            ],
          ),
        ),
      ),
    );
  }
}
