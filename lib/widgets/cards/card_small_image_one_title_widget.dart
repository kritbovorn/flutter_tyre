part of flutter_tyre;

class CardSmallImageOneTitleWidget extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Widget image;
  final void Function() onTapped;
  const CardSmallImageOneTitleWidget({
    Key? key,
    required this.title,
    required this.backgroundColor,
    required this.image,
    required this.onTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        width: 100,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: image,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
