import 'package:flutter/material.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/res/colors.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/res/dimens.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/utils/adapt_ui.dart';
class Logo extends StatefulWidget {
  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(UIAdaptor.w(10)),
      child: Text('51Talk', style: TextStyle(color: Colours.text_normal, fontSize: FontSize.logo,  fontWeight: FontWeight.bold),),
    );
  }
}
