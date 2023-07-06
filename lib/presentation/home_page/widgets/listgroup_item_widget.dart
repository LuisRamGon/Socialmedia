import 'package:flutter/material.dart';
import 'package:theodiin_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class ListgroupItemWidget extends StatelessWidget {
  ListgroupItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        width: getHorizontalSize(
          55,
        ),
        margin: getMargin(
          right: 16,
        ),
        padding: getPadding(
          left: 19,
          top: 5,
          right: 19,
          bottom: 5,
        ),
        decoration: AppDecoration.txtOutlineGray20002.copyWith(
          borderRadius: BorderRadiusStyle.txtRoundedBorder7,
        ),
        child: Text(
          "",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtPoppinsRegular14Black900,
        ),
      ),
    );
  }
}
