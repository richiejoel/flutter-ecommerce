import 'package:flutter/material.dart';

import 'package:shopapp/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 60,
    },
    {
      "name": "Hill",
      "picture": "images/products/hills1.jpeg",
      "old_price": 70,
      "price": 48,
    },
    {
      "name": "Pants",
      "picture": "images/products/pants2.jpeg",
      "old_price": 150,
      "price": 110,
    },
    {
      "name": "Shoes",
      "picture": "images/products/shoe1.jpg",
      "old_price": 150,
      "price": 110,
    },
    {
      "name": "Skirts",
      "picture": "images/products/skt1.jpeg",
      "old_price": 150,
      "price": 110,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_oldPrice: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_oldPrice;
  final product_price;

  SingleProduct(
      {this.product_name,
      this.product_picture,
      this.product_oldPrice,
      this.product_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: new Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
              //Pasar parametros a products detail
                builder: (context) => new ProductDetails(
                    product_detail_name: this.product_name,
                    product_detail_picture: this.product_picture,
                    product_detail_oldPrice: this.product_oldPrice,
                    product_detail_price: this.product_price
                ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: new Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(product_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                    ),
                    Text("\$${product_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                  ],
                )
              ),
              child: Image.asset(
                product_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
