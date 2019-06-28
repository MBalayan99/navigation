import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double  price;

  ProductPage(this.title, this.imageUrl, this.price);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(imageUrl),
          Row(
            children: <Widget>[
             Text(price.toString()),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(title),

              ),
            ],
          ),

          Container(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('Back'),
              onPressed: () => Navigator.pop(context, true),
            ),
          )

        ],
      ),
    );
  }
}
