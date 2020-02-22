import 'package:asgar_crypto_wallet_app/utilities/colors.dart';
import 'package:asgar_crypto_wallet_app/widgets/custom_app_bar.dart';
import 'package:asgar_crypto_wallet_app/widgets/list_component.dart';
import 'package:asgar_crypto_wallet_app/widgets/my_balance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Wallet',
      style: optionStyle,
    ),
    Text(
      'Index 2: History',
      style: optionStyle,
    ),
    Text(
      'Index 3: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: <Widget>[
          Expanded(
            child: CustomAppBar(),
          ),
          SizedBox(height: 32),
          Expanded(
            child: BalanceComponent(),
          ),
          SizedBox(height: 32),
          Expanded(
            flex: 5,
            child: WalletList(),
          ),
        ],
      ),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          canvasColor: kDarkColor,
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Feather.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Feather.credit_card),
              title: Text('Wallet'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Feather.activity),
              title: Text('History'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Feather.user),
              title: Text('Profile'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: kPrimaryColor,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
