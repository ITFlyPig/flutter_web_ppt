import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageUtil {
  static String getImgPath(String name, {String format: 'png'}) {
    return 'assets/images/$name.$format';
  }

  /// 加载本地资源图片
  static Widget loadAssetImage(String name,
      {double width, double height, BoxFit fit}) {
    return Image.asset(
      getImgPath(name),
      height: height,
      width: width,
      fit: fit,
    );
  }
}
