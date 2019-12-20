import 'package:flutter/material.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/res/colors.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/utils/adapt_ui.dart';

///
///
/// 指示器
///
class PageIndicator extends StatelessWidget {
  final int total;
  final int sel;

  const PageIndicator({Key key, this.total, this.sel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (total ?? 0) == 0
        ? SizedBox()
        : Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: _dots(total, sel),
            ),
          );
  }

  List<Widget> _dots(int total, int sel) {
    List<Widget> dots = [];
    for (int i = 0; i < (total ?? 0); i++) {
      dots.add(Opacity(
        opacity: 0.3,
        child: Container(
          width: UIAdaptor.w(10),
          height: UIAdaptor.w(10),
          margin: EdgeInsets.only(left: UIAdaptor.w(10), right: UIAdaptor.w(10)),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: i == sel ? Colors.lightBlue : Colours.text_gray_9),
        ),
      ));
    }
    return dots;
  }
}
