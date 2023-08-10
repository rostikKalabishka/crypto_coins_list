import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../repositories/crypto_coins/crypto_coins.dart';
import '../widgets/widgets.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen(
    this.title, {
    super.key,
  });

  final String title;

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  List<CryptoCoin>? _cryptoCoinsList;
  @override
  void initState() {
    _loadCryptoCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: (_cryptoCoinsList == null)
          ? Center(
              child: const CircularProgressIndicator(),
            )
          : ListView.separated(
              padding: EdgeInsets.only(top: 16),
              itemCount: _cryptoCoinsList!.length,
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, i) {
                final coin = _cryptoCoinsList![i];

                return CryptoCoinTile(
                  coin: coin,
                );
              },
            ),
    );
  }

  Future<void> _loadCryptoCoins() async {
    _cryptoCoinsList = await GetIt.I<AbstractCoinsRepository>().getCoinsList();
    setState(() {});
  }
}
