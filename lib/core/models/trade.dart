import 'package:crypto_stats/generated/assets.gen.dart';

// ignore: public_member_api_docs
class Trade {
  // ignore: public_member_api_docs
  String title1;
  // ignore: public_member_api_docs
  String title2;
  // ignore: public_member_api_docs
  String symbolId;
  // ignore: public_member_api_docs
  String price;
  // ignore: public_member_api_docs
  String takerSide;
  // ignore: public_member_api_docs
  AssetGenImage? icon;

  // ignore: public_member_api_docs, sort_constructors_first
  Trade(this.title1, this.title2, this.symbolId, this.price, this.takerSide,
      [this.icon]);

  // ignore: public_member_api_docs, sort_constructors_first
  Trade.fromJson(Map<String, dynamic> json)
      : title1 = json['symbol_id'].toString().split('_')[2],
        title2 = '/${json['symbol_id'].toString().split('_')[3]}',
        symbolId = json['symbol_id'] as String,
        price = json['price'] == null ? '' : json['price'].toString(),
        takerSide = json['taker_side'] as String;
}

// ignore: public_member_api_docs
final List<Trade> tradeList = [
  Trade('BTC', '/USD', 'COINBASE_SPOT_BTC_USD', '', '', Assets.images.btc),
  Trade('ETH', '/USD', 'COINBASE_SPOT_ETH_USD', '', '', Assets.images.eth),
  Trade('ADA', '/USD', 'COINBASE_SPOT_ADA_USD', '', '', Assets.images.ada)
];
