import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme/app_text_styles.dart';



class AppText extends StatelessWidget {

  const AppText._(
      this.text, {
        this.textAlign,
        required this.appTextStyle,
        this.textOverflow,
        this.maxLine,
        this.color,
      });

  factory AppText.largeTitle(
      String text, {
        TextOverflow? textOverflow,
        int? maxLine,
        TextAlign? textAlign,
        Color? color,
      }) {
    return AppText._(
      text,
      appTextStyle: AppTextStyle.extraBold(),
      textAlign: textAlign,
      textOverflow: textOverflow,
      maxLine: maxLine,
      color: color,
    );
  }

  factory AppText.heading1(
      String text, {
        TextOverflow? textOverflow,
        int? maxLine,
        TextAlign? textAlign,
        Color? color,
      }) {
    return AppText._(
      text,
      appTextStyle: AppTextStyle.heading1(),
      textAlign: textAlign,
      textOverflow: textOverflow,
      maxLine: maxLine,
      color: color,
    );
  }

  factory AppText.heading2(
      String text, {
        TextOverflow? textOverflow,
        int? maxLine,
        TextAlign? textAlign,
        Color? color,
      }) {
    return AppText._(
      text,
      appTextStyle: AppTextStyle.heading2(),
      textAlign: textAlign,
      textOverflow: textOverflow,
      maxLine: maxLine,
      color: color,
    );
  }

  factory AppText.heading3(
      String text, {
        TextOverflow? textOverflow,
        int? maxLine,
        TextAlign? textAlign,
        Color? color,
      }) {
    return AppText._(
      text,
      appTextStyle: AppTextStyle.heading3(),
      textAlign: textAlign,
      textOverflow: textOverflow,
      maxLine: maxLine,
      color: color,
    );
  }
  factory AppText.baseRegular(
      String text, {
        TextOverflow? textOverflow,
        int? maxLine,
        TextAlign? textAlign,
        Color? color,
      }) {
    return AppText._(
      text,
      appTextStyle: AppTextStyle.baseRegular(),
      textAlign: textAlign,
      textOverflow: textOverflow,
      maxLine: maxLine,
      color: color,
    );
  }
  factory AppText.baseSemibold(
      String text, {
        TextOverflow? textOverflow,
        int? maxLine,
        TextAlign? textAlign,
        Color? color,
      }) {
    return AppText._(
      text,
      appTextStyle: AppTextStyle.baseSemibold(),
      textAlign: textAlign,
      textOverflow: textOverflow,
      maxLine: maxLine,
      color: color,
    );
  }
  factory AppText.captionsRegular(
      String text, {
        TextOverflow? textOverflow,
        int? maxLine,
        TextAlign? textAlign,
        Color? color,
      }) {
    return AppText._(
      text,
      appTextStyle: AppTextStyle.captionsRegular(),
      textAlign: textAlign,
      textOverflow: textOverflow,
      maxLine: maxLine,
      color: color,
    );
  }
  factory AppText.captionsSemibold(
      String text, {
        TextOverflow? textOverflow,
        int? maxLine,
        TextAlign? textAlign,
        Color? color,
      }) {
    return AppText._(
      text,
      appTextStyle: AppTextStyle.captionsSemibold(),
      textAlign: textAlign,
      textOverflow: textOverflow,
      maxLine: maxLine,
      color: color,
    );
  }

  factory AppText.normal(
      String text, {
        TextOverflow? textOverflow,
        int? maxLine,
        TextAlign? textAlign,
        Color? color,
      }) {
    return AppText._(
      text,
      appTextStyle: AppTextStyle.regular(),
      textAlign: textAlign,
      textOverflow: textOverflow,
      maxLine: maxLine,
      color: color,
    );
  }

  factory AppText.small(
      String text, {
        TextOverflow? textOverflow,
        int? maxLine,
        TextAlign? textAlign,
        Color? color,
      }) {
    return AppText._(
      text,
      appTextStyle: AppTextStyle.small(),
      textAlign: textAlign,
      textOverflow: textOverflow,
      maxLine: maxLine,
      color: color,
    );
  }


  final String text;
  final AppTextStyle appTextStyle;
  final TextOverflow? textOverflow;
  final int? maxLine;
  final TextAlign? textAlign;
  final Color? color;



  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: appTextStyle.copyWith(
        color: color??Theme.of(context).colorScheme.onSurface
      ),
      textAlign: textAlign,
      overflow: textOverflow,
      maxLines: maxLine,
    );
  }
}