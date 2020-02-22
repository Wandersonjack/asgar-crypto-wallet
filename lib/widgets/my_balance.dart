import 'package:flutter/material.dart';

class BalanceComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return    Container(
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '€ ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '7 890.09',
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '€',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '334(13%)today',
                style: TextStyle(fontSize: 18),
              ),
              Icon(
                Icons.arrow_drop_up,
                size: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
