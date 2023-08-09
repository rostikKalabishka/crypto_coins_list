import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../crypto_list.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, i) {
          const coinName = 'Bitcoin';
          return CryptoCoinTile(coinName: coinName);
        },
      ),
    );
  }
}
