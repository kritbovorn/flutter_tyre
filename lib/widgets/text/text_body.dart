part of flutter_tyre;

class TextBody extends StatelessWidget {
  final String title;

  const TextBody({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.black.withOpacity(0.7),
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
