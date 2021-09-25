import 'package:crypto_stats/core/cubit/crypto_assets_cubit.dart';
import 'package:crypto_stats/core/cubit/live_prices_cubit.dart';
import 'package:crypto_stats/core/helpers/initialize_dependency.dart';
import 'package:crypto_stats/core/services/repository.dart';
import 'package:crypto_stats/crypto_stats/library.dart';
import 'package:crypto_stats/generated/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// {@template app}
/// The widget that handles the dependency injection of your application.
/// {@endtemplate}
class App extends StatelessWidget {
  /// {@macro app}
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppView();
  }
}

/// {@template app_view}
/// The widget that configures your application.
/// {@endtemplate}
class AppView extends StatelessWidget {
  /// {@macro app_view}
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        restorationScopeId: 'app',
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''), // English, no country code.
        ],
        theme: ThemeData(fontFamily: FontFamily.poppins),
        darkTheme: ThemeData.dark(),
        home: MultiBlocProvider(providers: [
          BlocProvider(
            create: (BuildContext context) =>
                CryptoAssetsCubit(injector.get<IRepository>()),
          ),
          BlocProvider(create: (BuildContext context) => LivePricesCubit())
        ], child: const CryptoStatsPage()));
  }
}
