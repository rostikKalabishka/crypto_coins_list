part of 'crypto_list_bloc.dart';

abstract class CryptoListEvent extends Equatable {}

class LoadCryptoListEvent extends CryptoListEvent {
  final Completer? completer;

  LoadCryptoListEvent({this.completer});

  @override
  List<Object?> get props => [completer];
}
