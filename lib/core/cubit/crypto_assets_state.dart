part of 'crypto_assets_cubit.dart';

@immutable
// ignore: public_member_api_docs
abstract class CryptoAssetsState {}

// ignore: public_member_api_docs
class CryptoInitial extends CryptoAssetsState {}

// ignore: public_member_api_docs
class CryptoLoaded extends CryptoAssetsState {
  // ignore: public_member_api_docs
  final List<CryptoAsset> cryptoAssets;

  // ignore: public_member_api_docs, sort_constructors_first
  CryptoLoaded({required this.cryptoAssets});
}
