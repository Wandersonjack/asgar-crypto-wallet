import 'package:asgar_crypto_wallet_app/model/cryptocurrency_model.dart';
import 'package:asgar_crypto_wallet_app/utilities/colors.dart';
import 'package:asgar_crypto_wallet_app/utilities/const.dart';
import 'package:flutter/material.dart';

class WalletList extends StatelessWidget {

  _buildCurrencies(BuildContext context, int index){
    CryptoCurrencies items =currencies[index];
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      padding: EdgeInsets.only(left: 16, right: 16),
      height: 88,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kDarkGreyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              //Crypto icon
              Container(
                padding: EdgeInsets.all(8),
                child: Image(
                  image: AssetImage(
                    items.currencyImg,
                  ),
                ),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: kCryptoItemColor,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              //Crypto data
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    //Currency name
                    items.currencyName,
                    style: TextStyle(
                      color: kTextTitleColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '${(items.currencyAmount).toString()} BTC', //Currency amount
                    style: TextStyle(
                      color: kSubtitleColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
          //rate growth
          Row(
            children: <Widget>[
              Text(
                '${(items.rate).toString()} (${(items.percent)})%',
                style: TextStyle(
                  color: kSuccessColor,
                  fontSize: 18,
                ),
              ),
              Icon(
                Icons.arrow_drop_up,
                color: kSuccessColor,
                size: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 590,
      decoration: kOverlayDecorationWhite,
      child: ListView.builder(
        itemCount: currencies.length,
        itemBuilder: (BuildContext context, int  index){
          return _buildCurrencies(context, index);
        },
      ),
    );
  }
}


/*
*
* Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            padding: EdgeInsets.only(left: 16, right: 16),
            height: 88,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kDarkGreyColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    //Crypto icon
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Image(
                        image: AssetImage(
                          'assets/bitcoin.png',
                        ),
                      ),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: kCryptoItemColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    //Crypto data
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          //Currency name
                          'Bitcoin',
                          style: TextStyle(
                            color: kTextTitleColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '2.30912 BTC', //Currency amount
                          style: TextStyle(
                            color: kSubtitleColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                //rate growth
                Row(
                  children: <Widget>[
                    Text(
                      '+123%',
                      style: TextStyle(
                        color: kSuccessColor,
                        fontSize: 18,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_up,
                      color: kSuccessColor,
                      size: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
          * */