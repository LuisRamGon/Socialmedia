import '../home_page/widgets/listgroup_item_widget.dart';
import '../home_page/widgets/listunsplashemlkhdeydhg_item_widget.dart';
import '../home_page/widgets/listunsplashzhh3wm2ko3s_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:theodiin_s_application4/core/app_export.dart';
import 'package:theodiin_s_application4/widgets/app_bar/appbar_image.dart';
import 'package:theodiin_s_application4/widgets/app_bar/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(37),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgComputer,
                    margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgSearch,
                      margin: getMargin(left: 16)),
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgNotification,
                      margin: getMargin(left: 24, right: 16),
                      onTap: () {
                        onTapNotification(context);
                      })
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 16, top: 40, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Find Your Style",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold24)),
                              Container(
                                  height: getVerticalSize(51),
                                  child: ListView.separated(
                                      padding: getPadding(top: 18),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(16));
                                      },
                                      itemCount: 5,
                                      itemBuilder: (context, index) {
                                        return ListgroupItemWidget();
                                      })),
                              Container(
                                  height: getVerticalSize(327),
                                  child: ListView.separated(
                                      padding: getPadding(top: 31),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(16));
                                      },
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        return ListunsplashemlkhdeydhgItemWidget(
                                            onTapColumnunsplashemlkhdeydhg: () {
                                          onTapColumnunsplashemlkhdeydhg(
                                              context);
                                        });
                                      })),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(top: 29, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Populer Items",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium18Black900),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtSeeAll(context);
                                                },
                                                child: Padding(
                                                    padding: getPadding(
                                                        top: 1, bottom: 4),
                                                    child: Text("See All",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsMedium14Orange700)))
                                          ]))),
                              Container(
                                  height: getVerticalSize(263),
                                  child: ListView.separated(
                                      padding: getPadding(top: 9),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(16));
                                      },
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        return Listunsplashzhh3wm2ko3sItemWidget(
                                            onTapColumnunsplashzhh3wm2ko3s: () {
                                          onTapColumnunsplashzhh3wm2ko3s(
                                              context);
                                        });
                                      }))
                            ]))))));
  }

  onTapColumnunsplashzhh3wm2ko3s(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.productViewScreen);
  }

  onTapColumnunsplashemlkhdeydhg(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.productViewScreen);
  }

  onTapTxtSeeAll(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.popularItemsScreen);
  }

  onTapNotification(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationScreen);
  }
}
