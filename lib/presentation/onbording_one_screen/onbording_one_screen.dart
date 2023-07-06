import 'package:flutter/material.dart';
import 'package:theodiin_s_application4/core/app_export.dart';
import 'package:theodiin_s_application4/widgets/custom_icon_button.dart';

class OnbordingOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgOnbordingone),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 13, right: 16, bottom: 13),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtSkip(context);
                                  },
                                  child: Text("Skip",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium18))),
                          Spacer(),
                          Text("Cool Product",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium24),
                          Container(
                              width: getHorizontalSize(285),
                              margin: getMargin(left: 29, top: 14, right: 29),
                              child: Text(
                                  "We create products in collaboration with\ngreat designers who are there to get the\ncoolest products for you.",
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtPoppinsRegular14)),
                          Container(
                              height: getSize(80),
                              width: getSize(80),
                              margin: getMargin(top: 39, bottom: 37),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CustomIconButton(
                                    height: 60,
                                    width: 60,
                                    shape: IconButtonShape.CircleBorder30,
                                    alignment: Alignment.center,
                                    onTap: () {
                                      onTapBtnArrowright(context);
                                    },
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgArrowrightBlack9001)),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: getSize(80),
                                        width: getSize(80),
                                        child: CircularProgressIndicator(
                                            value: 0.5)))
                              ]))
                        ])))));
  }

  onTapTxtSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpSignInScreen);
  }

  onTapBtnArrowright(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onbordingTwoScreen);
  }
}
