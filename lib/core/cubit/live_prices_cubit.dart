import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:crypto_stats/core/helpers/constants.dart';
import 'package:meta/meta.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'live_prices_state.dart';

// ignore: public_member_api_docs
class LivePricesCubit extends Cubit<LivePricesState> {
  final WebSocketChannel _channel =
      WebSocketChannel.connect(Uri.parse(webSocketUrl));

  // ignore: public_member_api_docs, sort_constructors_first
  LivePricesCubit() : super(LivePricesInitial());

  @override
  Future<void> close() {
    _channel.sink.close();
    return super.close();
  }

  // ignore: public_member_api_docs
  Stream getRealData() {
    _channel.sink.add(json.encode({
      'type': 'hello',
      'apikey': apiKey,
      'heartbeat': false,
      'subscribe_data_type': ['trade'],
      'subscribe_filter_symbol_id': [
        r'COINBASE_SPOT_BTC_USD$',
        r'COINBASE_SPOT_ETH_USD$',
        r'COINBASE_SPOT_ADA_USD$'
      ]
    }));

    return _channel.stream;
  }
}
