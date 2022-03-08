part of flutter_tyre;

class InkwellText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Function onHover;
  final VoidCallback onTap;

  const InkwellText(
      {Key? key,
      required this.text,
      required this.onHover,
      required this.onTap,
      this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: InkWell(
        onHover: (value) {
          onHover(value);
        },
        onTap: () {
          onTap;
        },
        hoverColor: Colors.transparent,
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
