import 'package:flutter/material.dart';
import 'package:theodiin_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class Chipviewgroup1315ItemWidget extends StatelessWidget {
  Chipviewgroup1315ItemWidget();

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        left: 15,
        right: 15,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Electonics",
        textAlign: TextAlign.left,
        style: TextStyle(
          color: ColorConstant.gray200,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: ColorConstant.gray200,
      selectedColor: ColorConstant.black900,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            18,
          ),
        ),
      ),
      onSelected: (value) {},
    );
  }
}
