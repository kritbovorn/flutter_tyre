part of flutter_tyre;

class ListImageTwoTitleOneButtonWidget extends StatelessWidget {
  final Widget image;
  final Widget nextButton;
  final String title;
  final String subTitle;
  const ListImageTwoTitleOneButtonWidget({
    Key? key,
    required this.image,
    required this.nextButton,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              spreadRadius: 0,
              blurRadius: 40,
              offset: const Offset(0, 10),
              color: const Color(0xff1d1617).withOpacity(0.07))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: image,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                    color: Color(0xff7b6f72),
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: SizedBox(
              width: 80,
              height: 80,
              child: nextButton,
            ),
          ),
        ],
      ),
    );
  }
}
