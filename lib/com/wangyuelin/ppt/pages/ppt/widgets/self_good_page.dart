import 'package:flutter/material.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/pages/ppt/widgets/index_item.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/pages/ppt/widgets/left_navi.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/pages/ppt/widgets/page_decoration.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/res/dimens.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/utils/adapt_ui.dart';

class SelfGoodPage extends StatefulWidget {
  @override
  _SelfGoodPageState createState() => _SelfGoodPageState();
}

class _SelfGoodPageState extends State<SelfGoodPage> {
  @override
  Widget build(BuildContext context) {
    return PageDecoration(
      child: Expanded(
        child: Container(
          child: Row(
            children: <Widget>[LeftNavi('自我成长'),
              Expanded(
                child: Container(
                  height: double.infinity,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        IndexItem(index: '1.', title: '  Flutter知识积累', fontSize: FontSize.listItem,),
                        SizedBox(height: UIAdaptor.h(10),),
                        IndexItem(index: '2.', title: '  整体开发项目经验积累', fontSize: FontSize.listItem,),
                        SizedBox(height: UIAdaptor.h(10),),
                        IndexItem(index: '3.', title: '  Java知识系统深入整理', fontSize: FontSize.listItem,),
                        SizedBox(height: UIAdaptor.h(10),),
                        IndexItem(index: '4.', title: '  博客知识分享', fontSize: FontSize.listItem,),
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
