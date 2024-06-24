part of flutter_tyre;

class TextTitle extends StatelessWidget {
  final String title;

  const TextTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.black.withOpacity(0.7),
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
