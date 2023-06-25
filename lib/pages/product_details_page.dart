import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:futter_realstate/config/app_style_config.dart';
import 'package:futter_realstate/config/size_config.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation,
      floatingActionButton: Container(
        margin: EdgeInsets.symmetric(
          horizontal: kPadding20,
        ),
        height: 43,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: kPadding8),
        decoration: BoxDecoration(),
        child: Row(
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "price",
                  style: kRalewayRegular.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                      color: kGrey85),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 0.5,
                ),
                Text(
                  "price",
                  style: kRalewayRegular.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      color: kBlack),
                )
              ],
            )),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius10),
                  gradient: kLinearGradientBlue,
                ),
                padding: EdgeInsets.symmetric(horizontal: kPadding24),
                child: Center(
                  child: Text(
                    "Rent Now",
                    style: kRalewaySemibold.copyWith(
                        color: kWhite,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 1,
                ),
                Container(
                  height: 319,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius10),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0,
                          offset: Offset(0, 18),
                          blurRadius: 18,
                          color: kBlack.withOpacity(0.1),
                        )
                      ],
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_640.jpg"))),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 136,
                          decoration: BoxDecoration(
                              gradient: kLinearGradientBlack,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(kBorderRadius20),
                                  bottomRight: Radius.circular(kBorderRadius20))),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(kPadding20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 17,
                                  backgroundColor: kBlack.withOpacity(0.24),
                                  child: SvgPicture.asset(
                                      'assets/icon_arrow_back.svg'),
                                ),
                                CircleAvatar(
                                  radius: 17,
                                  backgroundColor: kBlack.withOpacity(0.24),
                                  child: SvgPicture.asset(
                                      'assets/icon_bookmark.svg'),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dreamsilve",
                                  style: kRalewaySemibold.copyWith(
                                    color: kWhite,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 4.5,
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.blockSizeVertical! * 2.5,
                                ),
                                Text(
                                  "Dreamsilve",
                                  style: kRalewayRegular.copyWith(
                                    color: kWhite,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 2.5,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: kPadding24,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Description",
                      style: kRalewayRegular.copyWith(
                        color: kBlack,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                    ),
                  ],
                ),
                ReadMoreText(
                  "Tthe 3 level hosue man to know also about to knaow aobu tot also thing to know aobut  knwn also eojauo tojxcverokewn vneronvrwjnwnfjennnjwuwjfewndjin",
                  trimLines: 2,
                  trimExpandedText: "Show less",
                  trimMode: TrimMode.Line,
                  trimCollapsedText: "Show more",
                  style: kRalewayRegular.copyWith(
                    color: kBlack,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3,
                  ),
                  moreStyle: kRalewayRegular.copyWith(
                      color: kBlue,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3),
                  lessStyle: kRalewayRegular.copyWith(
                      color: kBlue,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3),
                ),
                SizedBox(
                  height: kPadding24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: kBlue,
                          radius: 20,
                          backgroundImage: NetworkImage(
                              "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_640.jpg"),
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal! * 4,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nazmul",
                              style: kRalewayRegular.copyWith(
                                  color: kBlack,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 4),
                            ),
                            SizedBox(
                              height: SizeConfig.blockSizeVertical! * 0.2,
                            ),
                            Text(
                              "Nazmul",
                              style: kRalewayRegular.copyWith(
                                  color: kGrey85,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 2.5),
                            )
                          ],
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kBorderRadius5),
                            color: kBlue.withOpacity(0.5),
                          ),
                          child: SvgPicture.asset('assets/icon_phone.svg'),
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal! * 4,
                        ),
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kBorderRadius5),
                            color: kBlue.withOpacity(0.5),
                          ),
                          child: SvgPicture.asset('assets/icon_message.svg'),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: kPadding24,),
                Text(
                  "Description",
                  style: kRalewayRegular.copyWith(
                    color: kBlack,
                    fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  ),
                ),
                SizedBox(height: kPadding24,),
                SizedBox(
                  height: SizeConfig.blockSizeVertical!*20,
                  child: GridView.builder(
itemCount: 4,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,

                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                      crossAxisSpacing: kPadding16,
                      childAspectRatio: 1), itemBuilder: (context,index){
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kBorderRadius10),
                            color: kBlue,
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage('https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_640.jpg'))
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: index==4-1 ?kBlack.withOpacity(0.3 ):null,
                              borderRadius: BorderRadius.circular(kPadding20),
                            ),
                            child: Center(
                              child: index==4-1?Text("+5",style: kRalewayMedium.copyWith(
                                color: kWhite,
                                fontSize: SizeConfig.blockSizeHorizontal!*5
                              ),):null
                            ),
                          ),
                        );
                  }),
                ),
                SizedBox(height: kPadding24,),
                Container(
                  height: 161,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/map_sample.png')
                    )
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 136,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(kBorderRadius20),
                              bottomRight: Radius.circular(kBorderRadius20)
                            ),
                            gradient: kLinearGradientWhite
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: kPadding24,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
