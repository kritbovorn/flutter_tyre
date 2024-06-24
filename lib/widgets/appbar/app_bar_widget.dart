// ignore_for_file: public_member_api_docs, sort_constructors_first
part of flutter_tyre;

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  final String title;
  final Widget? leading;
  final Widget? action;
  final Widget? actionLeading;
  const AppBarWidget({
    Key? key,
    this.backgroundColor,
    required this.title,
    this.leading,
    this.action,
    this.actionLeading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          letterSpacing: 1.2,
        ),
      ),
      centerTitle: true,
      backgroundColor: backgroundColor ?? Colors.white,
      //
      leading: Container(
        padding: const EdgeInsets.only(left: 10),
        child: leading ?? const SizedBox.shrink(),
      ),
      actions: [
        Container(
          alignment: Alignment.center,
          width: 45,
          child: actionLeading ?? const SizedBox.shrink(),
        ),
        Container(
          alignment: Alignment.center,
          width: 60,
          child: action ?? const SizedBox.shrink(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
