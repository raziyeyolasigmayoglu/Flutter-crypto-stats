part of ui.library;

/// {@template crypto_stats_page}
///  Page that hanldes the user interface for crypto stats feature.
/// {@endtemplate}
class CryptoStatsPage extends StatelessWidget {
  /// {@macro crypto_stats_page}
  const CryptoStatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: _buildBody(context)));
  }

  Widget _buildBody(BuildContext context) {
    final l10n = context.l10n;
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Profile(
                  message: l10n.message,
                  name: l10n.name,
                  avatar: Assets.images.avatar),
              const SizedBox(height: 20),
              BalanceCard(
                balance: l10n.dummyBalance,
                monthlyProfit: l10n.dummyMonthlyProfit,
                profitPer: l10n.dummyPercent,
              ),
              const SizedBox(height: 20),
              const LivePrices(),
              const SizedBox(height: 20),
              const CryptoAssets(),
              const SizedBox(height: 10),
            ])));
  }
}
