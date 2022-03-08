part of flutter_tyre;

class InkwellMenu extends StatelessWidget {

  final String text;
  final Function onHover;
  final VoidCallback onTap;
  
  const InkwellMenu({Key? key, required this.text, required this.onHover, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15,
      ),
      child: InkWell(
        onHover: (value) {
          onHover(value);
        },
        onTap: () {
          onTap;
        },
        child: Text(text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
      ),
    );
  }
}
