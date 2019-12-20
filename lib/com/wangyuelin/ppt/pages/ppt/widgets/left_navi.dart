import 'package:flutter/material.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/res/colors.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/res/dimens.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/utils/adapt_ui.dart';

class LeftNavi extends StatelessWidget {
  final String title;

  LeftNavi(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: UIAdaptor.w(10), right: UIAdaptor.w(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.lightBlue,
            size: FontSize.normal,
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.lightBlue,
            size: FontSize.normal,
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.lightBlue,
            size: FontSize.normal,
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.lightBlue,
            size: FontSize.normal,
          ),
          Text(
            title,
            style: TextStyle(
                color: Colours.text_gray_6, fontSize: FontSize.normal),
          ),
          Icon(
            Icons.keyboard_arrow_up,
            color: Colors.lightBlue,
            size: FontSize.normal,
          ),
          Icon(
            Icons.keyboard_arrow_up,
            color: Colors.lightBlue,
            size: FontSize.normal,
          ),
          Icon(
            Icons.keyboard_arrow_up,
            color: Colors.lightBlue,
            size: FontSize.normal,
          ),
          Icon(
            Icons.keyboard_arrow_up,
            color: Colors.lightBlue,
            size: FontSize.normal,
          ),
        ],
      ),
    );
  }
}
