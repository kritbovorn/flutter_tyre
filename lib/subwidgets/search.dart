part of flutter_tyre;

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12,
        ),
        child: SizedBox(
          width: 150,
          height: 35,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("search"),
              IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 20,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
