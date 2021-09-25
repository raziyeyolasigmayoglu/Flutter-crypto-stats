part of ui.library;

// ignore: public_member_api_docs
class BalanceCard extends StatelessWidget {
  // ignore: public_member_api_docs
  const BalanceCard(
      {Key? key,
      required this.balance,
      required this.monthlyProfit,
      required this.profitPer})
      : super(key: key);

  // ignore: public_member_api_docs
  final String balance;
  // ignore: public_member_api_docs
  final String monthlyProfit;
  // ignore: public_member_api_docs
  final String profitPer;

  @override
  Widget build(BuildContext context) {
    const whiteText = TextStyle(color: Colors.white);
    final l10n = context.l10n;
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blueAccent,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(l10n.balance, style: whiteText.copyWith(fontSize: 17)),
              Text(
                balance,
                style: whiteText.copyWith(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(l10n.monthlyProfit,
                              style: whiteText.copyWith(fontSize: 17)),
                          Text(monthlyProfit,
                              style: whiteText.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.bold))
                        ]),
                    Container(
                        padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.15),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15))),
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Icon(
                                Icons.arrow_drop_up,
                                size: 20,
                                color: Colors.greenAccent,
                              ),
                              Text(profitPer,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 13)),
                            ]))
                  ])
            ]));
  }
}
