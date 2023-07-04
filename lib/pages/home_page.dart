import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:futter_realstate/config/size_config.dart';
import 'package:futter_realstate/pages/product_details_page.dart';

import '../config/app_style_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> catagories = [
    "Hosue",
    "Apartment",
    "Hotel",
    "Villa",
    "Cottage",
  ];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: kPadding20, vertical: kPadding24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Location",
                          style: kRalewayRegular.copyWith(
                              color: Color(0xFF838383),
                              fontSize: SizeConfig.blockSizeHorizontal! * 2.5),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 0.5,
                        ),
                        Row(
                          children: [
                            Text(
                              "Jakarta",
                              style: kRalewayRegular.copyWith(
                                  color: Color(0xFF000000),
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 5),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 0.5,
                            ),
                            SvgPicture.asset(
                              "assets/icon_dropdown.svg",
                            )
                          ],
                        )
                      ],
                    ),
                    SvgPicture.asset("assets/icon_notification_has_notif.svg")
                  ],
                ),
              ),
              SizedBox(
                height: kPadding24,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kPadding20,
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      style: kRalewayRegular.copyWith(
                        color: kBlack,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: kPadding16,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(kPadding8),
                          child: SvgPicture.asset("assets/icon_search.svg"),
                        ),
                        hintText: "Search address, or near you",
                        border: kInputBorder,
                        errorBorder: kInputBorder,
                        disabledBorder: kInputBorder,
                        focusedBorder: kInputBorder,
                        enabledBorder: kInputBorder,
                        hintStyle: kRalewayRegular.copyWith(
                          color: kGrey85,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3,
                        ),
                        filled: true,
                        fillColor: kWhiteF7,
                      ),
                    )),
                    SizedBox(
                      width: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                    Container(
                      height: 49,
                      width: 49,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorderRadius10),
                        gradient: kLinearGradientBlue,
                      ),
                      child: SvgPicture.asset("assets/icon_filter.svg"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: kPadding24,
              ),
              SizedBox(
                width: double.infinity,
                height: 34,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: catagories.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              left: index == 0 ? kPadding20 : 12,
                              right: index == catagories.length - 1
                                  ? kPadding24
                                  : 0),
                          padding: EdgeInsets.symmetric(
                            horizontal: kPadding16,
                          ),
                          height: 43.83,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 18),
                                    blurRadius: 10,
                                    spreadRadius: 0,
                                    color: current == index
                                        ? kBlue.withOpacity(0.1)
                                        : kBlue.withOpacity(0)),
                              ],
                              gradient: current == index
                                  ? kLinearGradientBlue
                                  : kLinearGradientWhite,
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius10)),
                          child: Center(
                            child: Text(
                              catagories[index],
                              style: kRalewayMedium.copyWith(
                                  color: current == index ? kWhite : kBlack,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 2.5),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: kPadding24,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kPadding20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Near from you",
                      style: kRalewayMedium.copyWith(
                        color: kBlack,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                    ),
                    Text(
                      "See more",
                      style: kRalewayRegular.copyWith(
                          color: kGrey85,
                          fontSize: SizeConfig.blockSizeHorizontal! * 2.5),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: kPadding24,
              ),
              SizedBox(
                height: 272,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetailsPage()));
                        },
                        child: Container(
                          height: 272,
                          width: 222,
                          margin: EdgeInsets.only(
                            left: kPadding20,
                            right: index == 5 - 1 ? kPadding20 : 0,
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius20),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 0,
                                  offset: const Offset(0, 18),
                                  blurRadius: 18,
                                  color: kBlack.withOpacity(0.1),
                                )
                              ],
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_640.jpg"),
                                  fit: BoxFit.cover)),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 136,
                                  decoration: BoxDecoration(
                                      gradient: kLinearGradientBlack,
                                      borderRadius: const BorderRadius.only(
                                          bottomLeft:
                                              Radius.circular(kBorderRadius20),
                                          bottomRight: Radius.circular(
                                              kBorderRadius20))),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: kPadding16,
                                    vertical: kPadding20,
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      kBorderRadius20),
                                              color: kBlack.withOpacity(0.24),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: kPadding8,
                                                vertical: kPadding4),
                                            child: Row(
                                              children: [
                                                SvgPicture.asset(
                                                  "assets/icon_pinpoint.svg",
                                                ),
                                                const SizedBox(
                                                  width: kPadding4,
                                                ),
                                                Text(
                                                  "1.8 km",
                                                  style: kRalewayRegular.copyWith(
                                                      color: kWhite,
                                                      fontSize: SizeConfig
                                                              .blockSizeHorizontal! *
                                                          2.5),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Dreamsvile Hosue",
                                            style: kRalewayMedium.copyWith(
                                                color: kWhite,
                                                fontSize: SizeConfig
                                                        .blockSizeHorizontal! *
                                                    4),
                                          ),
                                          SizedBox(height: SizeConfig.blockSizeHorizontal!*0.5,),
                                          Text(
                                            "jr sultan iskandar mode",
                                            style: kRalewayRegular.copyWith(
                                                color: kWhite,
                                                fontSize: SizeConfig
                                                        .blockSizeHorizontal! *
                                                    2.5),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kPadding20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Near from you",
                      style: kRalewayMedium.copyWith(
                        color: kBlack,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                    ),
                    Text(
                      "See more",
                      style: kRalewayRegular.copyWith(
                          color: kGrey85,
                          fontSize: SizeConfig.blockSizeHorizontal! * 2.5),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: kPadding24,
              ),
              Padding(padding: const EdgeInsets.symmetric(
                horizontal: kPadding20,

              ),child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 8,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){


                    return Container(
                      height: 70,
                      margin: const EdgeInsets.only(
                        bottom: kPadding24,

                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(kBorderRadius10),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 0,
                                  offset: Offset(0,18),
                                  blurRadius: 18,
                                  color: kBlack.withOpacity(0.1),
                                ),
                                
                              ],
                              image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_640.jpg"),
                              fit: BoxFit.cover)
                            ),
                          ),
                          SizedBox(width: SizeConfig.blockSizeHorizontal!*4.5,),
                          Expanded(child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Orched HOsue",style: kRalewayMedium.copyWith(
                                color: kBlack
                                    ,fontSize: SizeConfig.blockSizeHorizontal!*4,
                              ),),
                              SizedBox(height: SizeConfig.blockSizeVertical!*0.5,),
                              Text("Orched HOsue",style: kRalewayRegular.copyWith(
                                color: kBlack
                                ,fontSize: SizeConfig.blockSizeHorizontal!*2.5,
                              ),),
                              Expanded(
                                  child: Row(
                                    children: [
                                      Row(
                                children: [
                                      SvgPicture.asset('assets/icon_bedroom.svg',),
                                      SizedBox(width: SizeConfig.blockSizeHorizontal!* 0.5,),


                                      Text("6 Bedroom",style: kRalewayRegular.copyWith(
                                        color: kGrey85
                                        ,fontSize: SizeConfig.blockSizeHorizontal!*2.5,
                                      ),),
                                ],
                              ),
                                      SizedBox(width: SizeConfig.blockSizeHorizontal!* 1,),
                                      Row(
                                children: [
                                      SvgPicture.asset('assets/icon_bathroom.svg',),
                                      SizedBox(width: SizeConfig.blockSizeHorizontal!* 0.5,),


                                      Text("4 Bathroom",style: kRalewayRegular.copyWith(
                                        color: kGrey85
                                        ,fontSize: SizeConfig.blockSizeHorizontal!*2.5,
                                      ),),
                                ],
                              ),
                                    ],
                                  ))
                            ],
                          ))
                        ],
                      ),
                    );

              }),)
            ],
          ),
        ),
      ),
    );
  }
}
