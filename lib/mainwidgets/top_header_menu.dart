part of flutter_tyre;

class TopHeaderMenu extends StatelessWidget {
const TopHeaderMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){

    var screenSize = MediaQuery.of(context).size;

    return Container(  
        color: const Color.fromARGB(255, 226, 199, 120),
        width: screenSize.width,
        height: 60,
        child: Row(  
          children: const [

            Expanded(
              flex: 2,  
              child: TopLeftHeaderMenu(),
              // child: SizedBox(),
            ), 

            Expanded(  
              flex: 5,
              child: SizedBox(),
            ),

            Expanded( 
              flex: 3, 
              child: TopRightHeaderMenu(),
              // child: SizedBox(),
            ),
          ],
        ),
      );
  }
}