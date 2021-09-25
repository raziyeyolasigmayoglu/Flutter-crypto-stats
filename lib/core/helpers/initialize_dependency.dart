import 'package:crypto_stats/core/services/network_service.dart';
import 'package:crypto_stats/core/services/repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt injector = GetIt.instance;

// ignore: public_member_api_docs
void initializeDependency() {
  injector.registerSingleton<Dio>(Dio());

  // ignore: cascade_invocations
  injector
      .registerSingleton<INetworkService>(NetworkService(injector.get<Dio>()));
  // ignore: cascade_invocations
  injector.registerSingleton<IRepository>(
      Repository(injector.get<INetworkService>()));
}
