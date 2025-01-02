import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final bool isLoading;
  final bool isDisabled;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? loaderColor;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final double? width;
  final Color? shadowColor;

  const CustomButton({super.key,
    required this.onPressed,
    required this.title,
    this.isLoading = false,
    this.isDisabled = false,
    this.backgroundColor,
    this.foregroundColor,
    this.loaderColor,
    this.textStyle,
    this.padding,
    this.width,
    this.shadowColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width??double.infinity,
      padding: padding ?? const EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: isDisabled || isLoading ? null : onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            // If button is disabled, use a dimmed version of the background
            if (states.contains(WidgetState.disabled)) {
              return backgroundColor?.withOpacity(0.3) ?? Colors.grey.withOpacity(0.3);
            }
            return backgroundColor ?? _getDefaultBackgroundColor(context);
          }),
          foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            return foregroundColor ?? _getDefaultTextColor(context);
          }),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 12, horizontal: 24)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
          shadowColor: WidgetStateProperty.all(shadowColor ?? Colors.black.withOpacity(0.2)),
        ),
        child: isLoading
            ? _buildLoader(context)  // Show loader if isLoading is true
            : Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
              child: Text(title, style: textStyle ?? _getDefaultTextStyle(context)),
            ),
      ),
    );
  }

  Widget _buildLoader(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation(loaderColor ?? Colors.white),
      strokeWidth: 2.0,
    );
  }

  // Default background color based on context (i.e., primary, secondary, or error)
  Color _getDefaultBackgroundColor(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return colorScheme.primary;
  }

  // Default text color based on context (i.e., onPrimary, onSecondary, or onError)
  Color _getDefaultTextColor(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return colorScheme.onPrimary;
  }

  // Default text style (can be customized)
  TextStyle _getDefaultTextStyle(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(color: _getDefaultTextColor(context));
  }
}

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final bool isLoading;
  final bool isDisabled;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final double? width;

  const PrimaryButton({
    required this.onPressed,
    required this.title,
    this.isLoading = false,
    this.isDisabled = false,
    this.backgroundColor,
    this.foregroundColor,
    this.textStyle,
    this.padding,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: onPressed,
      title: title,
      isLoading: isLoading,
      isDisabled: isDisabled,
      backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.primary,
      foregroundColor: foregroundColor ?? Theme.of(context).colorScheme.onPrimary,
      textStyle: textStyle,
      padding: padding,
      width: width,
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final bool isLoading;
  final bool isDisabled;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final double? width;

  const SecondaryButton({
    required this.onPressed,
    required this.title,
    this.isLoading = false,
    this.isDisabled = false,
    this.backgroundColor,
    this.foregroundColor,
    this.textStyle,
    this.padding,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: onPressed,
      title: title,
      isLoading: isLoading,
      isDisabled: isDisabled,
      backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.secondary,
      foregroundColor: foregroundColor ?? Theme.of(context).colorScheme.onSecondary,
      textStyle: textStyle,
      padding: padding,
      width: width,
    );
  }
}

class ErrorButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final bool isLoading;
  final bool isDisabled;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final double? width;

  const ErrorButton({
    required this.onPressed,
    required this.title,
    this.isLoading = false,
    this.isDisabled = false,
    this.backgroundColor,
    this.foregroundColor,
    this.textStyle,
    this.padding,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: onPressed,
      title: title,
      isLoading: isLoading,
      isDisabled: isDisabled,
      backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.error,
      foregroundColor: foregroundColor ?? Theme.of(context).colorScheme.onError,
      textStyle: textStyle,
      padding: padding,
      width: width,
    );
  }
}



// class AppButton extends StatelessWidget {
//   const AppButton._({
//     required this.onPressed,
//     required this.title,
//     this.isDisabled = false,
//     this.backgroundColor,
//     this.isLoading = false,
//     this.foregroundColor,
//     this.loaderColor,
//     this.shadowColor,
//     this.textStyle,
//     this.width,
//     this.padding
//   });
//
//   final VoidCallback onPressed;
//   final String title;
//   final bool isDisabled;
//   final Color? backgroundColor;
//   final bool isLoading;
//   final double? width;
//   final Color? foregroundColor;
//   final Color? loaderColor;
//   final Color? shadowColor;
//   final TextStyle? textStyle;
//   final EdgeInsets? padding;
//
//   /// Private helper method to create an AppButton
//   static AppButton _createButton({
//     required VoidCallback onPressed,
//     required String title,
//     Color? backgroundColor,
//     Color? shadowColor,
//     bool isDisabled = false,
//     bool isLoading = false,
//     Color? foregroundColor,
//     Color? loaderColor,
//     AppTextStyle? textStyle,
//     double? width,
//     EdgeInsets? padding
//   }) {
//     return AppButton._(
//       isLoading: isLoading,
//       onPressed: onPressed,
//       title: title,
//       isDisabled: isDisabled,
//       width: width,
//       padding: padding,
//       backgroundColor: backgroundColor,
//       foregroundColor: foregroundColor,
//       loaderColor: loaderColor,
//       shadowColor: shadowColor,
//       textStyle: textStyle,
//     );
//   }
//
//   /// Factory constructor for primary button
//   factory AppButton.primary({
//     required VoidCallback onPressed,
//     required String title,
//     bool isDisabled = false,
//     bool isLoading = false,
//     Color? foregroundColor,
//     Color? loaderColor,
//     AppTextStyle? textStyle,
//     double? width,
//     EdgeInsets? padding
//   }) {
//     return _createButton(
//         onPressed: onPressed,
//         title: title,
//         isDisabled: isDisabled,
//         isLoading: isLoading,
//         foregroundColor: foregroundColor,
//         loaderColor: loaderColor,
//         textStyle: textStyle,
//         padding: padding,
//         width: width
//     );
//   }
//
//   /// Factory constructor for secondary button
//   factory AppButton.secondary({
//     required VoidCallback onPressed,
//     required String title,
//     bool isDisabled = false,
//     bool isLoading = false,
//     double? width,
//     Color? foregroundColor,
//     Color? loaderColor,
//     AppTextStyle? textStyle,
//     EdgeInsets? padding
//   }) {
//     return _createButton(
//       onPressed: onPressed,
//       title: title,
//       isDisabled: isDisabled,
//       isLoading: isLoading,
//       foregroundColor: foregroundColor,
//       loaderColor: loaderColor,
//       textStyle: textStyle,
//       width:width,
//       padding:padding,
//     );
//   }
//
//   /// Factory constructor for error button
//   factory AppButton.error({
//     required VoidCallback onPressed,
//     required String title,
//     bool isDisabled = false,
//     bool isLoading = false,
//     Color? foregroundColor,
//     Color? loaderColor,
//     AppTextStyle? textStyle,
//   }) {
//     return _createButton(
//       onPressed: onPressed,
//       title: title,
//       isDisabled: isDisabled,
//       isLoading: isLoading,
//       foregroundColor: foregroundColor,
//       loaderColor: loaderColor,
//       textStyle: textStyle,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: padding,
//       width: width,
//       child: ElevatedButton(
//         onPressed: isDisabled || isLoading ? null : onPressed,
//         style: ButtonStyle(
//           padding: WidgetStateProperty.all(const EdgeInsets.all(8)),
//           shape: WidgetStateProperty.all<RoundedRectangleBorder>(
//             RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8),
//               side: BorderSide.none,
//             ),
//           ),
//           shadowColor: WidgetStateProperty.all<Color>(shadowColor ?? const Color(0xCCE7E4E8)),
//           backgroundColor: WidgetStateProperty.resolveWith<Color>(
//                 (Set<WidgetState> states) {
//               if (states.contains(WidgetState.disabled)) {
//                 return backgroundColor?.withOpacity(0.3) ?? context.colorScheme().primary.withOpacity(0.3);
//               }
//               return backgroundColor ?? context.colorScheme().primary;
//             },
//           ),
//           // foregroundColor: WidgetStateProperty.resolveWith<Color>(
//           //       (Set<WidgetState> states) {
//           //     if (states.contains(WidgetState.disabled)) {
//           //       return foregroundColor ?? AppColor.whiteColor;
//           //     }
//           //     return foregroundColor ?? AppColor.whiteColor;
//           //   },
//           // ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Text(title, style: textStyle??TextStyle(color: context.colorScheme().onPrimary)),
//         ),
//       ),
//     );
//   }
// }