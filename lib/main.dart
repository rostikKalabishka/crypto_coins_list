import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const CryptoCurrenciesListApp());
}

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey[900],
            titleTextStyle: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
          ),
          useMaterial3: true,
          dividerColor: Colors.white10,
          listTileTheme: const ListTileThemeData(iconColor: Colors.white),
          textTheme: TextTheme(
              bodyMedium: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
              labelSmall: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontWeight: FontWeight.w700,
                  fontSize: 14)),
          scaffoldBackgroundColor: Colors.grey[900]),
      routes: {
        '/': (context) => CryptoListScreen('Crypto Currencies List'),
        '/coin': (context) => CryptoCoinScreen()
      },
      // initialRoute: ,
      // home: const CryptoListScreen('Crypto Currencies List'),
    );
  }
}

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
          return ListTile(
            leading: SvgPicture.asset(
              'assets/btc_logo.svg',
              width: 30,
              height: 30,
            ),
            trailing: const Icon(
              Icons.arrow_forward,
            ),
            title: Text('$coinName',
                style: Theme.of(context).textTheme.bodyMedium),
            subtitle:
                Text('2200\$ ', style: Theme.of(context).textTheme.labelSmall),
            onTap: () {
              Navigator.of(context).pushNamed('/coin', arguments: coinName);
            },
          );
        },
      ),
    );
  }
}

class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({super.key});

  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {
  String? coinName;
  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is String, 'You must provide String args');
    // if (args == null) {
    //   log('You must provide args');
    //   return;
    // }
    // if (args is! String) {
    //   log('You must provide String args');
    //   return;
    // }

    setState(() {
      coinName = args as String;
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(coinName ?? '...'),
      ),
    );
  }
}
