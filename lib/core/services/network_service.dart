import 'package:crypto_stats/core/helpers/constants.dart';
import 'package:dio/dio.dart';

// ignore: public_member_api_docs
abstract class INetworkService {
  // ignore: public_member_api_docs
  Future<List<dynamic>> getCryptoAssets();
}

// ignore: public_member_api_docs
class NetworkService implements INetworkService {
  // ignore: prefer_typing_uninitialized_variables
  final Dio _dioClient;
  // ignore: public_member_api_docs, sort_constructors_first
  NetworkService(this._dioClient);

  @override
  Future<List<dynamic>> getCryptoAssets() async {
    try {
      // ignore: avoid_dynamic_calls
      final result = await _dioClient.get<List<dynamic>>(
        baseUrl,
        options: Options(
          headers: <String, String>{'X-CoinAPI-Key': '{$apiKey}'},
        ),
      );

      // ignore: avoid_dynamic_calls
      return result.data!;
    } catch (e) {
      return <List<dynamic>>[];
    }
  }
}
