import 'package:flutter/material.dart';

class ResponsiveUi {
  final Widget desktopUi;
  final Widget mobileUI;
  final Widget tabletUi;

  // Breakpoints for different device sizes (adjust based on your needs)
  static const double largeDesktopSize = 1440;
  static const double desktopSize = 1090;
  static const double tabletSize = 768;
  static const double mobileLandscapeSize = 480;
  static const double mobilePortraitSize = 360;

  const ResponsiveUi({
    required this.desktopUi,
    required this.tabletUi,
    required this.mobileUI,
  });
  static shouldDisplay(bool condition, {required Widget child}) {
    return condition ? child : const SizedBox();
  }

  ///[noTabletOrDesktopView]is a method that displays a widget when it is bigger than mobile screens e.g(dsktop or web)
  static Widget showInTabletView(BuildContext context,
      {required Widget child}) {
    final isTabletView = MediaQuery.of(context).size.width > tabletSize;
    return isTabletView ? child : const SizedBox.shrink();
  }

  static Widget showInDesktopViewOnly(BuildContext context,
      {required Widget child}) {
    final isDesktopOnly = MediaQuery.of(context).size.width > desktopSize;
    return isDesktopOnly ? child : const SizedBox.shrink();
  }

  Widget getUi(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size.shortestSide;

    switch (deviceSize) {
      case desktopSize:
        return desktopUi;
      case tabletSize:
        return tabletUi;
      case mobileLandscapeSize:
      default:
        return mobileUI;
    }
  }
}

Size getScreenSize(context) {
  return MediaQuery.of(context).size;
}
