import 'package:crypto_coins_list/repositories/crypto_coins/models/crypto_coin_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({super.key, required this.coin});

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        coin.imageUrl,
        width: 30,
        height: 30,
      ),
      trailing: const Icon(
        Icons.arrow_forward,
      ),
      title:
          Text('${coin.name}', style: Theme.of(context).textTheme.bodyMedium),
      subtitle: Text('${coin.priceInUSD} \$ ',
          style: Theme.of(context).textTheme.labelSmall),
      onTap: () {
        Navigator.of(context).pushNamed('/coin', arguments: coin.name);
      },
    );
  }
}
