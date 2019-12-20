import 'package:flutter/material.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/pages/ppt/widgets/page_decoration.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/res/colors.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/utils/adapt_ui.dart';

import 'left_navi.dart';

class EndPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageDecoration(
      child: Expanded(
        child: Container(
          child: Row(
            children: <Widget>[LeftNavi('结束'),
              Expanded(
                child: Container(
                  height: double.infinity,
                  child: Center(
                    child: Text('谢谢', style: TextStyle(fontSize: UIAdaptor.sp(30), color: Colours.text_gray_6, fontWeight: FontWeight.w500),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
