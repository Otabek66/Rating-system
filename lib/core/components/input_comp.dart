import 'package:exprienseone/core/constants/constants.dart';
import 'package:flutter/material.dart';

class InputComp {
  static inputDecoration({required String hintText,required String labelText,required Icon suffixIcon}) => InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            RadiusConst.mediumRadius,
          ),
        ),
        hintText: hintText,
        labelText: labelText,
        suffixIcon: suffixIcon,
      );
}
