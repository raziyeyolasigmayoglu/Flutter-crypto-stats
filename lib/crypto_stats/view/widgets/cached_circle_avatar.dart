part of ui.library;

// ignore: public_member_api_docs
class CachedCircleAvatar extends StatelessWidget {
  final String url;
  // ignore: public_member_api_docs, sort_constructors_first
  const CachedCircleAvatar({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 20, backgroundImage: CachedNetworkImageProvider(url));
  }
}
