import 'package:flutter/material.dart';

///UI适配器
///核心思想：ui在设计稿中占多少的比例，尽量还原在屏幕中占多少比例
/// 适配方案：
///计算公式：实际尺寸 = UI尺寸 * 设备宽度/设计图宽度
///1px方案 : 1px = 1 / 设备像素比
///
class UIAdaptor {
  ///屏幕的逻辑上像素上宽高
  static double _screenW;
  static double _screenH;

  ///UI设计尺寸
  static double _uiW;
  static double _uiH;

  //在宽和高方向的比例
  static double _ratioW = 1.5;
  static double _ratioH = 1.5;

  static double _textScaleFactor = 1;

  static void initData(MediaQueryData mediaQueryData,
      {double uiW = 750, double uiH = 1334}) {
    assert(mediaQueryData != null);
    assert(uiW > 0);
    assert(uiH > 0);
    _screenH = mediaQueryData?.size?.height;
    _screenW = mediaQueryData?.size?.width;
    _uiW = uiW;
    _uiH = uiH;
    _ratioW = _screenW / _uiW;
    _ratioH = _screenH / _uiH;
    _textScaleFactor = mediaQueryData.textScaleFactor; //字体的一个逻辑像素对应多少实际像素
    print('屏幕的宽和高' +
        (_screenW?.toString() ?? 'null') +
        " X " +
        (_screenH?.toString() ?? 'null') +
        ' 逻辑像素：' +
        (mediaQueryData.textScaleFactor ?? 0).toString() + ' _ratioW：' + (_ratioW ?? 'null').toString());
  }

  ///
  /// 宽度方向据ui的尺寸计算得到真实的尺寸
  ///
  static double w(int pxW) {
    return pxW * _ratioW;
  }

  ///
  /// 高度方向据ui的尺寸计算得到真实的尺寸
  ///
  static double h(int pxH) {
    return pxH * _ratioH;
  }

  ///
  /// 设置字体
  ///
  static double sp(int fontSize) {
    print('开始返回像素');
    print('fontSize:' +
        (fontSize?.toString() ?? 'null') +
        ' _ratioW:' +
        ((_ratioW ?? 'null') .toString()) +
        ' _textScaleFactor:' +
        (_textScaleFactor?.toString() ?? 'null') +
        ' _uiW:' +
        (_uiW?.toString() ?? 'null') +
        ' _screenW:' +
        (_screenW?.toString() ?? 'null'));
    return fontSize * _ratioW / _textScaleFactor;
  }

  ///
  /// 1像素对应的尺寸
  ///
  static double onePx() {
    return 1 / (_ratioW <= 0 ? 1 : _ratioW);
  }
}
