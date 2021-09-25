// ignore: public_member_api_docs
class CryptoAsset {
  // ignore: public_member_api_docs
  String assetId;
  // ignore: public_member_api_docs
  String url;

  // ignore: public_member_api_docs, sort_constructors_first
  CryptoAsset(this.assetId, this.url);

  // ignore: public_member_api_docs, sort_constructors_first
  CryptoAsset.fromJson(Map<String, dynamic> json)
      : assetId = json['asset_id'] as String,
        url = json['url'] as String;
}
