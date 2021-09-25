import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

export 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Extension methods for `AppLocalizations` using `BuildContext`.
extension AppLocalizationsX on BuildContext {
  /// Short-hand for `AppLocalizations.of(context)`.
  AppLocalizations get l10n => AppLocalizations.of(this);
}
