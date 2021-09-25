part of ui.library;

// ignore: public_member_api_docs
class CryptoAssets extends StatelessWidget {
  // ignore: public_member_api_docs
  const CryptoAssets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_dynamic_calls
    BlocProvider.of<CryptoAssetsCubit>(context).getCryptoAssets();
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('Crypto assets', style: TextStyle(fontSize: 17)),
          Container(
              height: 400,
              padding: const EdgeInsets.only(top: 20),
              child: BlocBuilder<CryptoAssetsCubit, CryptoAssetsState>(
                  builder: (context, state) {
                if (state is! CryptoLoaded) {
                  return const Center(child: CircularProgressIndicator());
                }
                final cryptoAssets = state.cryptoAssets;
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: cryptoAssets.length,
                    itemBuilder: (context, index) {
                      return Card(
                          child: ListTile(
                              leading: CachedCircleAvatar(
                                  url: cryptoAssets[index].url),
                              title: Center(
                                  child: Text(cryptoAssets[index].assetId,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)))));
                    });
              }))
        ]);
  }
}
