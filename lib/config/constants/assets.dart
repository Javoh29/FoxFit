abstract class Assets {
  const Assets._();

  // ignore: library_private_types_in_public_api
  static _Icons get icons => const _Icons();

  // ignore: library_private_types_in_public_api
  static _Images get images => const _Images();
}

abstract class _AssetsHolder {
  final String basePath;

  const _AssetsHolder(this.basePath);
}

class _Icons extends _AssetsHolder {
  const _Icons() : super('assets/icons');

  String get arrowBack => "$basePath/ic_arrow_back.svg";
  String get arrowDown => "$basePath/ic_arrow_down.svg";
  String get calendar => "$basePath/ic_calendar.svg";

  String get minus => "$basePath/ic_minus_circle.svg";

  String get plus => "$basePath/ic_plus_circle.svg";
}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');

  String get defoultSplash => "$basePath/img_bg.jpg";
  String get appLogoCircle => "$basePath/app_logo_circle.png";
}
