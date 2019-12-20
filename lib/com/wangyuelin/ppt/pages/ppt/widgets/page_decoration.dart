import 'package:flutter/material.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/res/colors.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/res/dimens.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/utils/adapt_ui.dart';

import 'logo.dart';

class PageDecoration extends StatefulWidget {
  final Widget child;

  const PageDecoration({Key key, this.child}) : super(key: key);

  @override
  _PageDecorationState createState() => _PageDecorationState();

}

class _PageDecorationState extends State<PageDecoration> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Logo(),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                      right: UIAdaptor.w(10)),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      children: <Widget>[
                        Text(
                          '来自51Talk-无所不能的移动端部门',
                          style: TextStyle(
                              fontSize: FontSize.small,
                              color: Colours.text_gray_9),
                        ),
                        Text(
                          '联系我： wangyuelin@51talk.com',
                          style: TextStyle(
                              fontSize: FontSize.small,
                              color: Colours.text_gray_9),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ), //头部
          Divider(color: Colors.lightBlue, indent: UIAdaptor.w(10), endIndent: UIAdaptor.w(10),),
          widget.child//内容区域
        ],
      ),
    );
  }
}
