part of flutter_tyre;

class TopLeftHeaderMenu extends StatelessWidget {
const TopLeftHeaderMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Material(
          color: Colors.transparent,
          child: IconButton(
            icon: const FaIcon(FontAwesomeIcons.facebookSquare),
            // icon: const Icon(Icons.message),
            onPressed: () {},
          ),
        ),
        Material(
          color: Colors.transparent,
          child: IconButton(
            icon: const FaIcon(FontAwesomeIcons.youtube),
            // icon: const Icon(Icons.message),
            onPressed: () {},
          ),
        ),
        Material(
          color: Colors.transparent,
          child: IconButton(
            icon: const FaIcon(FontAwesomeIcons.instagram),
            // icon: const Icon(Icons.message),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
