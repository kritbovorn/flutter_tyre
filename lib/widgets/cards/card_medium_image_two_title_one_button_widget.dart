part of flutter_tyre;

class CardMediumImageTwoTitleOneButtonWidget extends StatelessWidget {
  final Color backgroundColor;
  final Widget image;
  final String title;
  final String subTitle;
  final String? titleButton;
  final void Function() onTapped;

  const CardMediumImageTwoTitleOneButtonWidget({
    Key? key,
    required this.backgroundColor,
    required this.image,
    required this.title,
    required this.subTitle,
    this.titleButton,
    required this.onTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          image,
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            subTitle,
            style: const TextStyle(
              color: Color(0xff7B6F72),
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
          GestureDetector(
            onTap: onTapped,
            child: Container(
              alignment: Alignment.center,
              height: 45,
              width: 130,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Color(0xff9dceff), Color(0xff92a3fd)]),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                titleButton ?? "View",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
