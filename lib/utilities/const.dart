import 'package:flutter/material.dart';
import 'package:asgar_crypto_wallet_app/utilities/colors.dart';


//DIMENSIONS AND SHAPES
final Radius kRounded = Radius.circular(30);
final Radius kRounded15 = Radius.circular(15);

final BoxDecoration kOverlayDecorationWhite = BoxDecoration(
  color: kDarkColor,
  borderRadius: BorderRadius.only(
    topLeft: kRounded,
    topRight: kRounded,
  ),
);