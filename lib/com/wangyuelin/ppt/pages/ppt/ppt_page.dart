import 'package:flutter/material.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/pages/ppt/widgets/end_page.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/pages/ppt/widgets/index_item.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/pages/ppt/widgets/left_navi.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/pages/ppt/widgets/page_decoration.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/pages/ppt/widgets/page_indicator.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/pages/ppt/widgets/self_bad_page.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/pages/ppt/widgets/self_good_page.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/res/colors.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/res/dimens.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/utils/adapt_ui.dart';
import 'package:my_web_ppt/com/wangyuelin/ppt/utils/image_utils.dart';
import 'package:quiver/strings.dart';

class PPTPage extends StatefulWidget {
  @override
  _PPTPageState createState() => _PPTPageState();
}

class _PPTPageState extends State<PPTPage> {
  int _total = 6;
  int _curIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.white,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Container(
              margin: EdgeInsets.all(UIAdaptor.w(10)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colours.text_gray_9)),
              child: AspectRatio(
                aspectRatio: 2 / 1,
                child: Stack(
                  children: <Widget>[
                    PageView.builder(
                      controller: _pageController,
                      onPageChanged: (selPage) {
                        setState(() {
                          _curIndex = selPage;
                        });
                      },
                      itemBuilder: (context, index) {
                        Widget page;
                        switch (index) {
                          case 0:
                            page = _welcome();
                            break;
                          case 1:
                            page = _page1();
                            break;
                          case 2:
                            page = _page2();
                            break;
                          case 3:
                            page = SelfGoodPage();
                            break;
                          case 4:
                            page = SelfBadPage();
                            break;
                          case 5:
                            page = EndPage();
                            break;
                          default:
                            page = SizedBox();
                            break;
                        }
                        return page;
                      },
                      itemCount: _total,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: UIAdaptor.h(20)),
                        child: PageIndicator(
                          total: _total,
                          sel: _curIndex,
                          pageController: _pageController,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  ///第一页欢迎
  Widget _welcome() {
    return PageDecoration(
      child: Expanded(
        child: Center(
          child: Container(
            color: Colours.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Divider(
                  color: Colours.border_color,
                  indent: UIAdaptor.w(200),
                  endIndent: UIAdaptor.w(200),
                ),
                SizedBox(
                  height: UIAdaptor.h(20),
                ),
                Text(
                  '2019年年终述职报告',
                  style: TextStyle(
                      fontSize: FontSize.secondTitle,
                      color: Colours.text_normal),
                ),
                Text(
                  '王跃林',
                  style: TextStyle(
                      fontSize: UIAdaptor.sp(15), color: Colours.text_normal),
                ),
                SizedBox(
                  height: UIAdaptor.h(20),
                ),
                Divider(
                    color: Colours.border_color,
                    height: UIAdaptor.h(20),
                    indent: UIAdaptor.w(200),
                    endIndent: UIAdaptor.w(200))
              ],
            ),
          ),
        ),
      ),
    );
  }

  ///
  /// 目录页面
  ///
  Widget _page1() {
    return PageDecoration(
      child: Expanded(
        child: Container(
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        _item('1.', '  工作回顾'),
                        _item('2.', '  自我成长')
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _item('3.', '  自我反省'),
                        _item('4.', '  结束')
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _item(String index, String title, {double fontSize}) {
    fontSize = FontSize.normal;
    return IndexItem(index: index, title: title, fontSize: fontSize,);
  }



  ///
  /// 年终总结
  Widget _page2() {
    return PageDecoration(
      child: Expanded(
        child: Container(
          child: Row(
            children: <Widget>[LeftNavi('工作回顾'),
              Expanded(
                child: Container(
                  child: ListView.builder(itemBuilder: (context, index) {
                    Widget item;
                    switch (index) {
                      case 0:
                        item = _listItem("老师APP", 'teacher');
                        break;
                      case 1:
                        item = _listItem("Android 耗时排查", 'fun');
                        break;
                      case 2:
                        item = _listItem("版本迭代", '51talk');
                        break;
                      default:
                        item = SizedBox();
                        break;
                    }
                    return item;
                  }, itemCount: 3, scrollDirection: Axis.horizontal),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


  Widget _listItem(String title, String img) {
    return Container(
      margin: EdgeInsets.only(left: UIAdaptor.w(10)),
      width: UIAdaptor.w(200),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colours.border_color,
          border: Border.all(color: Colours.border_color)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(title, style: TextStyle(
              color: Colours.text_gray_6, fontSize: UIAdaptor.sp(15)),),
          isEmpty(img) ? SizedBox() : ImageUtil.loadAssetImage(img, fit: BoxFit.contain)
        ],

      ),
    );
  }
}
