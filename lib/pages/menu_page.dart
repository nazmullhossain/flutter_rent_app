import 'package:flutter/material.dart';
import 'package:futter_realstate/config/app_style_config.dart';
import 'package:futter_realstate/config/size_config.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(

      ),
    );
  }


// widget buildMenuItem(BuildContext context,
//   {required NavigationItem item,required String text,required IconData icon,}){
//     final provider= Provider.of<MenuProvider>(context);
//     final currentItem=provider.navigaitonItem;
//     final isSelected=item==currentItem;
//     final color= isSelected?kBlue:kWhite;
//     SizeConfig().init(context);
//     return GestureDetector(
//       onTap: (){
//         selectItem(context,item);
//       },
// child: AnimatedContainer(
//   duration: Duration(
//     milliseconds: 100,
//
//   ),
//   decoration: BoxDecoration(
//     color: isSelected?kWhite:null,
//     borderRadius: BorderRadius.only(
//       topRight: Radius.circular(kBorderRadius20),
//       bottomRight: Radius.circular(kBorderRadius20),
//     )
//   ),
// ),
//     );
//
// }

}
