import 'package:bloc/bloc.dart';
import 'package:crypto_stats/core/models/crypto_asset.dart';
import 'package:crypto_stats/core/services/repository.dart';
import 'package:meta/meta.dart';

part 'crypto_assets_state.dart';

// ignore: public_member_api_docs
class CryptoAssetsCubit extends Cubit<CryptoAssetsState> {
  final IRepository _repository;

  // ignore: public_member_api_docs, sort_constructors_first
  CryptoAssetsCubit(this._repository) : super(CryptoInitial());

  // ignore: public_member_api_docs
  void getCryptoAssets() {
    _repository.getCryptoAssets().then((cryptoAssets) {
      emit(CryptoLoaded(cryptoAssets: cryptoAssets));
    });
  }
}
