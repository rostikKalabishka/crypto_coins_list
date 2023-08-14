import 'package:crypto_coins_list/repositories/crypto_coins/crypto_coins.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'crypto_list_event.dart';
part 'crypto_list_state.dart';

class CryptoListBloc extends Bloc<CryptoListEvent, CryptoListState> {
  CryptoListBloc(this.coinsRepository) : super(CryptoListInitial()) {
    on<LoadCryptoListEvent>((event, emit) async {
      try {
        final cryptoList = await coinsRepository.getCoinsList();
        emit(CryptoListLoaded(coinsList: cryptoList));
      } catch (e) {
        emit(CryptoListLoadingFailure(exception: e));
      }
    });
  }

  final AbstractCoinsRepository coinsRepository;
}
