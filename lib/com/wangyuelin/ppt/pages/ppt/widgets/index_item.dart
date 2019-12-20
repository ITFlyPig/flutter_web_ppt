import 'package:flutter/material.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/res/colors.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/utils/adapt_ui.dart';

class IndexItem extends StatelessWidget {
  final String index;
  final String title;
  final double fontSize;

  const IndexItem({Key key, this.index, this.title, this.fontSize}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: UIAdaptor.w(10),
            height: UIAdaptor.w(10),
            decoration:
            BoxDecoration(color: Colors.lightBlue, shape: BoxShape.circle),
          ),
          SizedBox(
            width: UIAdaptor.w(10),
          ),
          Text(
            index,
            style: TextStyle(
                color: Colours.text_gray_6,
                fontSize: UIAdaptor.sp(22),
                fontWeight: FontWeight.bold),
          ),
          Text(
            title,
            style: TextStyle(
                color: Colours.text_gray_6, fontSize: fontSize),
          )
        ],
      ),
    );
  }
}
