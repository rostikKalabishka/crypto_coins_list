import 'package:flutter_bloc/flutter_bloc.dart';

part 'crypto_coins_detail_state.dart';
part 'crypto_coins_detail_event.dart';

class CryptoCoinDetailBloc
    extends Bloc<CryptoCoinDetailEvent, CryptoCoinDetailState> {
  CryptoCoinDetailBloc() : super(CryptoCoinDetailInitial()) {
    on<CryptoCoinDetailEvent>((event, emit) {});
  }
}
