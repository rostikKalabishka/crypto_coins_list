part of 'crypto_list_bloc.dart';

class CryptoListEvent {}

class LoadCryptoListEvent extends CryptoListEvent {
  final Completer? completer;

  LoadCryptoListEvent({this.completer});
}
