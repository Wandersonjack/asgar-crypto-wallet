import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 64, left: 20, right: 20),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://uinames.com/api/photos/male/9.jpg'),
          ),
          Text(
            'Total balance',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          IconButton(
            icon: Icon(Feather.bell),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
