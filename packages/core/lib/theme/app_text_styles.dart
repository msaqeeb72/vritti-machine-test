

import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'font_sizes.dart';
import 'font_weight.dart';

class AppTextStyle extends TextStyle {
  /// The font weight to use when painting the text.
  final FontWeight fontWeight;

  /// The size of glyphs (in logical pixels) to use when painting the text.
  final double fontSize;

  /// The color to use when painting the text.
  final Color? color;

  /// The name of the font to use when painting the text.
  final String? fontFamily;

  /// Private constructor for [AppTextStyle].
  AppTextStyle._({
    required this.fontWeight,
    required this.fontSize,
    this.color,
    this.fontFamily = 'Poppins',
  }) : super(
    fontWeight: fontWeight,
    fontSize: fontSize,
    color: color,
    fontFamily: fontFamily,
  );

  /// Factory constructor to create a [regular400] text style.
  ///
  /// [fontSize] is the size of the text. Default is [FontSizes.size14].
  /// [color] is the color of the text. Default is [AppColor.primaryTextColor].
  /// [fontFamily] is the font family. Default is 'Sora'.
  factory AppTextStyle.regular({
    double fontSize = FontSizes.size14,
    Color? color,
    String? fontFamily,
  }) {
    return AppTextStyle._(
      fontWeight: AppFontWeights.regular,
      fontSize: fontSize,
      color: color,
      fontFamily: fontFamily,
    );
  }

  /// Factory constructor to create a [regular400] text style.
  ///
  /// [fontSize] is the size of the text. Default is [FontSizes.size14].
  /// [color] is the color of the text. Default is [AppColor.primaryTextColor].
  /// [fontFamily] is the font family. Default is 'Sora'.
  factory AppTextStyle.small({
    double fontSize = FontSizes.size14,
    Color? color,
    String? fontFamily,
  }) {
    return AppTextStyle._(
      fontWeight: AppFontWeights.light,
      fontSize: fontSize,
      color: color,
      fontFamily: fontFamily,
    );
  }

  /// Factory constructor to create a [medium500] text style.
  ///
  /// [fontSize] is the size of the text. Default is [FontSizes.size14].
  /// [color] is the color of the text. Default is [AppColor.primaryTextColor].
  /// [fontFamily] is the font family. Default is 'Sora'.
  factory AppTextStyle.medium({
    double fontSize = FontSizes.size14,
    Color? color,
    String? fontFamily,
  }) {
    return AppTextStyle._(
      fontWeight: AppFontWeights.medium,
      fontSize: fontSize,
      color: color,
      fontFamily: fontFamily,
    );
  }

  /// Factory constructor to create a [semibold600] text style.
  ///
  /// [fontSize] is the size of the text. Default is [FontSizes.size14].
  /// [color] is the color of the text. Default is [AppColor.primaryTextColor].
  /// [fontFamily] is the font family. Default is 'Sora'.
  factory AppTextStyle.semiBold({
    double fontSize = FontSizes.size14,
    Color? color,
    String? fontFamily,
  }) {
    return AppTextStyle._(
      fontWeight: AppFontWeights.semiBold,
      fontSize: fontSize,
      color: color,
      fontFamily: fontFamily,
    );
  }

  /// Factory constructor to create a [bold700] text style.
  ///
  /// [fontSize] is the size of the text. Default is [FontSizes.size14].
  /// [color] is the color of the text. Default is [AppColor.primaryTextColor].
  /// [fontFamily] is the font family. Default is 'Sora'.
  factory AppTextStyle.bold({
    double fontSize = FontSizes.size14,
    Color? color,
    String? fontFamily,
  }) {
    return AppTextStyle._(
      fontWeight: AppFontWeights.bold,
      fontSize: fontSize,
      color: color,
      fontFamily: fontFamily,
    );
  }
  factory AppTextStyle.extraBold({
    double fontSize = FontSizes.size28,
    Color? color,
    String? fontFamily,
  }) {
    return AppTextStyle._(
      fontWeight: AppFontWeights.extraBold,
      fontSize: fontSize,
      color: color,
      fontFamily: fontFamily,
    );
  }
  factory AppTextStyle.heading1({
    double fontSize = FontSizes.size20,
    Color? color,
    String? fontFamily,
  }) {
    return AppTextStyle._(
      fontWeight: AppFontWeights.bold,
      fontSize: fontSize,
      color: color,
      fontFamily: fontFamily,
    );
  }
  factory AppTextStyle.heading2({
    double fontSize = FontSizes.size18,
    Color? color,
    String? fontFamily,
  }) {
    return AppTextStyle._(
      fontWeight: AppFontWeights.bold,
      fontSize: fontSize,
      color: color,
      fontFamily: fontFamily,
    );
  }
  factory AppTextStyle.heading3({
    double fontSize = FontSizes.size16,
    Color? color,
    String? fontFamily,
  }) {
    return AppTextStyle._(
      fontWeight: AppFontWeights.bold,
      fontSize: fontSize,
      color: color,
      fontFamily: fontFamily,
    );
  }
  factory AppTextStyle.baseRegular({
    double fontSize = FontSizes.size14,
    Color? color,
    String? fontFamily,
  }) {
    return AppTextStyle._(
      fontWeight: AppFontWeights.regular,
      fontSize: fontSize,
      color: color,
      fontFamily: fontFamily,
    );
  }
  factory AppTextStyle.baseSemibold({
    double fontSize = FontSizes.size14,
    Color? color,
    String? fontFamily,
  }) {
    return AppTextStyle._(
      fontWeight: AppFontWeights.semiBold,
      fontSize: fontSize,
      color: color,
      fontFamily: fontFamily,
    );
  }
  factory AppTextStyle.captionsRegular({
    double fontSize = FontSizes.size16,
    Color? color,
    String? fontFamily,
  }) {
    return AppTextStyle._(
      fontWeight: AppFontWeights.regular,
      fontSize: fontSize,
      color: color,
      fontFamily: fontFamily,
    );
  }
  factory AppTextStyle.captionsSemibold({
    double fontSize = FontSizes.size14,
    Color? color,
    String? fontFamily,
  }) {
    return AppTextStyle._(
      fontWeight: AppFontWeights.semiBold,
      fontSize: fontSize,
      color: color,
      fontFamily: fontFamily,
    );
  }
}