import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coinName,
  });

  final String coinName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        'assets/btc_logo.svg',
        width: 30,
        height: 30,
      ),
      trailing: const Icon(
        Icons.arrow_forward,
      ),
      title: Text('$coinName', style: Theme.of(context).textTheme.bodyMedium),
      subtitle: Text('2200\$ ', style: Theme.of(context).textTheme.labelSmall),
      onTap: () {
        Navigator.of(context).pushNamed('/coin', arguments: coinName);
      },
    );
  }
}
