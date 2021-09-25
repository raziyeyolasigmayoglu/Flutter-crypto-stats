part of ui.library;

// ignore: public_member_api_docs
class Profile extends StatelessWidget {
  // ignore: public_member_api_docs
  const Profile(
      {Key? key,
      required this.message,
      required this.name,
      required this.avatar})
      : super(key: key);

  // ignore: public_member_api_docs
  final String message;
  // ignore: public_member_api_docs
  final String name;
  // ignore: public_member_api_docs
  final AssetImage avatar;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
        Widget>[
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
        Text(message, style: const TextStyle(fontSize: 17)),
        Text(name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ]),
      CircleAvatar(backgroundImage: avatar)
    ]);
  }
}
