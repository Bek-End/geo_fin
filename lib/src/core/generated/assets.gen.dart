/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImgGen {
  const $AssetsImgGen();

  /// File path: assets/img/42.png
  AssetGenImage get a42 => const AssetGenImage('assets/img/42.png');

  /// File path: assets/img/khit.png
  AssetGenImage get khit => const AssetGenImage('assets/img/khit.png');

  /// File path: assets/img/rocket.png
  AssetGenImage get rocket => const AssetGenImage('assets/img/rocket.png');

  /// List of all assets
  List<AssetGenImage> get values => [a42, khit, rocket];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/chat.svg
  String get chat => 'assets/svg/chat.svg';

  /// File path: assets/svg/chevron_left.svg
  String get chevronLeft => 'assets/svg/chevron_left.svg';

  /// File path: assets/svg/close.svg
  String get close => 'assets/svg/close.svg';

  /// File path: assets/svg/close_bold.svg
  String get closeBold => 'assets/svg/close_bold.svg';

  /// File path: assets/svg/incognito.svg
  String get incognito => 'assets/svg/incognito.svg';

  /// File path: assets/svg/incognito2.svg
  String get incognito2 => 'assets/svg/incognito2.svg';

  /// File path: assets/svg/incognito_big.svg
  String get incognitoBig => 'assets/svg/incognito_big.svg';

  /// File path: assets/svg/like.svg
  String get like => 'assets/svg/like.svg';

  /// File path: assets/svg/like_fill.svg
  String get likeFill => 'assets/svg/like_fill.svg';

  /// File path: assets/svg/main_component.svg
  String get mainComponent => 'assets/svg/main_component.svg';

  /// File path: assets/svg/menu.svg
  String get menu => 'assets/svg/menu.svg';

  /// File path: assets/svg/plus.svg
  String get plus => 'assets/svg/plus.svg';

  /// File path: assets/svg/settings.svg
  String get settings => 'assets/svg/settings.svg';

  /// File path: assets/svg/voise.svg
  String get voise => 'assets/svg/voise.svg';

  /// List of all assets
  List<String> get values =>
      [chat, chevronLeft, close, closeBold, incognito, incognito2, incognitoBig, like, likeFill, mainComponent, menu, plus, settings, voise];
}

class Assets {
  Assets._();

  static const $AssetsImgGen img = $AssetsImgGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
