import 'package:flutter/material.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/pages/ppt/widgets/index_item.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/pages/ppt/widgets/left_navi.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/pages/ppt/widgets/page_decoration.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/res/dimens.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/utils/adapt_ui.dart';

class SelfBadPage extends StatefulWidget {
  @override
  _SelfBadPageState createState() => _SelfBadPageState();
}

class _SelfBadPageState extends State<SelfBadPage> {
  @override
  Widget build(BuildContext context) {
    return PageDecoration(
      child: Expanded(
        child: Container(
          child: Row(
            children: <Widget>[LeftNavi('自我反省'),
              Expanded(
                child: Container(
                  height: double.infinity,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        IndexItem(index: '1.', title: '  项目技术选择', fontSize: FontSize.listItem,),
                        SizedBox(height: UIAdaptor.h(10),),
                        IndexItem(index: '2.', title: '  项目时间估计', fontSize: FontSize.listItem,),
                        SizedBox(height: UIAdaptor.h(10),),
                        IndexItem(index: '3.', title: '  系统基础知识尚薄弱', fontSize: FontSize.listItem,),
                      ],
                    ),
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
