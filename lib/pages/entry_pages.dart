// import 'package:flutter/material.dart';
// import 'package:futter_realstate/pages/zoom_home_page.dart';
// import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';
//
// import 'home_page.dart';
// class EntryPage extends StatefulWidget {
//   const EntryPage({Key? key}) : super(key: key);
//
//   @override
//   State<EntryPage> createState() => _EntryPageState();
// }
//
// class _EntryPageState extends State<EntryPage> with
// TickerProviderStateMixin{
//   late MenuProvider menuController;
//   @override
//   void initState() {
//     super.initState();
//
//     menuController = MenuProvider(
//       vsync: this,
//     )..addListener(
//           () => setState(
//             () {},
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     menuController.dispose();
//     // TODO: implement dispose
//     super.dispose();
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//         create: (context)=>menuController,
//     child: ZoomHomePage(
//       menuScreen: MenuPage(),
//       contentScreen:Layout(
//         contentBuilder: (cc)=>HomePage()
//       )
//     ),);
//   }
// }
