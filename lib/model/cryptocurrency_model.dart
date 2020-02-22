class CryptoCurrencies {
  final int id;
  final String currencyName;
  final double currencyAmount;
  final int rate;
  final int percent;
  final String currencyImg;

  CryptoCurrencies({
    this.id,
    this.currencyName,
    this.currencyAmount,
    this.rate,
    this.percent,
    this.currencyImg,
  });
}

final CryptoCurrencies bitcoin = CryptoCurrencies(
  id: 0,
  currencyName: 'Bitcoin',
  currencyAmount: 2.30912,
  rate: 123,
  percent: 7,
  currencyImg: 'assets/bitcoin.png',
);
final CryptoCurrencies ether = CryptoCurrencies(
  id: 1,
  currencyName: 'Ethereum',
  currencyAmount: 343.34503,
  rate: 102,
  percent: 21,
  currencyImg: 'assets/eth.png',
);

final CryptoCurrencies ripple = CryptoCurrencies(
  id: 3,
  currencyName: 'Ripple',
  currencyAmount: 143.34503,
  rate: 187,
  percent: 3,
  currencyImg: 'assets/rip.png',
);

final CryptoCurrencies litcoin = CryptoCurrencies(
    id: 0,
    currencyName: 'Litcoin',
    currencyAmount: 189,
    rate: 223,
    percent: 21,
    currencyImg: 'assets/lit.png');

final List<CryptoCurrencies> currencies = [
  bitcoin,
  ether,
  ripple,
  litcoin,
];
