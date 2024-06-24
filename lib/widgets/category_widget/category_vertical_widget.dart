part of flutter_tyre;

class CategoryVerticalWidget extends StatelessWidget {
  final List<dynamic> datas;
  final Widget Function(dynamic data) childBuilder;
  final String title;

  const CategoryVerticalWidget({
    Key? key,
    required this.datas,
    required this.childBuilder,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: TextBody(
            title: title,
          ),
        ),
        const SizedBox(height: 15),
        ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemCount: datas.length,
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 25),
          itemBuilder: (BuildContext context, int index) {
            dynamic data = datas[index];
            return childBuilder(data);
          },
        ),
      ],
    );
  }
}
