import '../features/crypto_coin/crypto_coin.dart';
import '../features/crypto_list/crypto_list.dart';

final routes = {
  '/': (context) => CryptoListScreen('Crypto Currencies List'),
  '/coin': (context) => CryptoCoinScreen()
};
