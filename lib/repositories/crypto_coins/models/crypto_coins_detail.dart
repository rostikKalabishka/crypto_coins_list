import 'package:crypto_coins_list/repositories/crypto_coins/models/models.dart';

class CryptoCoinDetail extends CryptoCoin {
  CryptoCoinDetail({
    required super.name,
    required super.priceInUSD,
    required super.imageUrl,
    required this.toSymbol,
    required this.lastUpdate,
    required this.hight24Hour,
    required this.low24Hours,
  });
  final String toSymbol;
  final DateTime lastUpdate;
  final double hight24Hour;
  final double low24Hours;

  //   @override
  // List<Object> get props => super.props
  //   ..addAll([
  //     toSymbol,
  //     lastUpdate,
  //     hight24Hour,
  //     low24Hours,
  //   ]);
}
