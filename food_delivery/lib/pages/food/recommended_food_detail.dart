import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimension.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimension.radius20),
                    topLeft: Radius.circular(Dimension.radius20),
                  ),
                ),
                child: Center(
                    child: BigText(
                  text: "Spaghetti Dish",
                  size: Dimension.font26,
                )),
                width: double.maxFinite,
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableText(
                      text:
                          "A humble packet of spaghetti can be transformed into something truly special. This long skinny pasta works when coated in emulsified carbonara sauce, tossed in a spicy tomato puttanesca, quickly mixed in a herby garlic oil – the options are too long to list. Spaghetti can also be elevated into something luxurious when served with shellfish, like prawns, clams or crab.A humble packet of spaghetti can be transformed into something truly special. This long skinny pasta works when coated in emulsified carbonara sauce, tossed in a spicy tomato puttanesca, quickly mixed in a herby garlic oil – the options are too long to list. Spaghetti can also be elevated into something luxurious when served with shellfish, like prawns, clams or crab.A humble packet of spaghetti can be transformed into something truly special. This long skinny pasta works when coated in emulsified carbonara sauce, tossed in a spicy tomato puttanesca, quickly mixed in a herby garlic oil – the options are too long to list. Spaghetti can also be elevated into something luxurious when served with shellfish, like prawns, clams or crab.A humble packet of spaghetti can be transformed into something truly special. This long skinny pasta works when coated in emulsified carbonara sauce, tossed in a spicy tomato puttanesca, quickly mixed in a herby garlic oil – the options are too long to list. Spaghetti can also be elevated into something luxurious when served with shellfish, like prawns, clams or crab.A humble packet of spaghetti can be transformed into something truly special. This long skinny pasta works when coated in emulsified carbonara sauce, tossed in a spicy tomato puttanesca, quickly mixed in a herby garlic oil – the options are too long to list. Spaghetti can also be elevated into something luxurious when served with shellfish, like prawns, clams or crab.A humble packet of spaghetti can be transformed into something truly special. This long skinny pasta works when coated in emulsified carbonara sauce, tossed in a spicy tomato puttanesca, quickly mixed in a herby garlic oil – the options are too long to list. Spaghetti can also be elevated into something luxurious when served with shellfish, like prawns, clams or crab.A humble packet of spaghetti can be transformed into something truly special. This long skinny pasta works when coated in emulsified carbonara sauce, tossed in a spicy tomato puttanesca, quickly mixed in a herby garlic oil – the options are too long to list. Spaghetti can also be elevated into something luxurious when served with shellfish, like prawns, clams or crab."),
                  margin: EdgeInsets.only(
                      left: Dimension.width20, right: Dimension.width20),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: Dimension.height10,
                bottom: Dimension.height10,
                left: Dimension.width20 * 2.5,
                right: Dimension.width20 * 2.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimension.iconSize24,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.remove,
                  iconColor: Colors.white,
                ),
                BigText(
                  text: "\$4.99" + " X " + "0",
                  color: AppColors.mainBlackColor,
                  size: Dimension.font26,
                ),
                AppIcon(
                  iconSize: Dimension.iconSize24,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.add,
                  iconColor: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            height: Dimension.bottomHeightBar,
            padding: EdgeInsets.only(
                top: Dimension.height30,
                bottom: Dimension.height30,
                left: Dimension.width20,
                right: Dimension.width20),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimension.radius20 * 2),
                  topRight: Radius.circular(Dimension.radius20 * 2)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimension.height20,
                      bottom: Dimension.height20,
                      left: Dimension.width20,
                      right: Dimension.width20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimension.radius20),
                      color: Colors.white),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimension.height20,
                      bottom: Dimension.height20,
                      left: Dimension.width20,
                      right: Dimension.width20),
                  decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(Dimension.radius20)),
                  child: BigText(
                    text: "\$10 | Add to cart",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
