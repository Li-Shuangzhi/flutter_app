import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/widgets/littleIconFont.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:dotted_decoration/dotted_decoration.dart';

class firstPage extends StatefulWidget {
  @override
  _firstPageState createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          backgroundColor: Colors.white,
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  // isScrollable: true, //如果多个按钮可以滑动
                  indicatorColor: Colors.blue, //指示器颜色
                  labelColor: Colors.blue, //指示器文字颜色
                  unselectedLabelColor: Colors.black, //未选中的指示器文字颜色
                  indicatorSize: TabBarIndicatorSize.tab, //指示器长度
                  tabs: <Widget>[
                    Tab(text: '科目一'),
                    Tab(text: '科目四'),
                    Tab(text: '满分学习'),
                    Tab(text: '注册恢复')
                  ],
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: [
                Container(
                  height: 150.0,
                  child:Swiper(
                    itemBuilder: (BuildContext context,int index){
                      return Image.network("http://via.placeholder.com/350x150",fit: BoxFit.fill,);
                    },
                    itemCount: 3,
                    pagination: SwiperPagination(),
                    control: SwiperControl(),
                    autoplay: true,
                    duration: 3,
                  ),
                ),
                Container(
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 4.0),
                        )
                      ]
                  ),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: GestureDetector(
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 62, 176, 54),
                                border: Border.all(color: Color.fromARGB(255, 204, 234, 201), width: 9.0),
                                shape: BoxShape.circle
                            ),
                            child: Text("\n      免费\n  体验技巧",style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                          ),
                          onTap: (){
                            print("1");
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 22, right: 22),
                        child: GestureDetector(
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 237, 109, 34),
                                border: Border.all(color: Color.fromARGB(255, 249, 219, 199), width: 9.0),
                                shape: BoxShape.circle
                            ),
                            child: Text("\n      开通\n  手机系统",style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                          ),
                          onTap: (){
                            print("2");
                          },
                        ),
                      ),
                      Container(
                        child: GestureDetector(
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 60, 130, 199),
                                border: Border.all(color: Color.fromARGB(255, 197, 219, 240), width: 9.0),
                                shape: BoxShape.circle
                            ),
                            child: Text("\n      分享\n  转发好友",style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                          ),
                          onTap: (){
                            print("3");
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 7),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            LittleIconFont("专项训练", Colors.blue, IconData(0xe689, fontFamily: 'iconfont'), 33 ),
                            LittleIconFont("预约考试", Colors.green, IconData(0xe64c, fontFamily: 'iconfont'), 35 ),
                            LittleIconFont("我的成绩", Colors.orange, IconData(0xe62e, fontFamily: 'iconfont'), 35 ),
                            LittleIconFont("考前密卷", Colors.redAccent, IconData(0xe608, fontFamily: 'iconfont'), 40 ),
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only( bottom: 20),
                                child: Container(
                                  padding: EdgeInsets.all(3),
                                  child: RaisedButton(
                                    child: Text("进入\n技巧学习",textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                                    color: Color.fromARGB(255, 101, 219, 11),
                                    onPressed: () {},
                                    shape: CircleBorder(),
                                  ),
                                ),
                                width: 120,
                                height: 120,
                                decoration: DottedDecoration(
                                    color: Color.fromARGB(255, 101, 219, 11),
                                    shape: Shape.circle,
                                    dash: <int>[5, 4]
                                ),
                              ),
                              Container(
                                child: Container(
                                  padding: EdgeInsets.all(2),
                                  child: RaisedButton(
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                          children: <InlineSpan>[
                                            TextSpan(text: '模拟考试', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                                            TextSpan(text: "100%仿真", style: TextStyle(color: Colors.white, fontSize: 14)),
                                          ]
                                      ),

                                    ),
                                    color: Colors.blue,
                                    onPressed: () {},
                                    shape: CircleBorder(),
                                  ),
                                ),
                                width: 120,
                                height: 120,
                                decoration: DottedDecoration(
                                    color: Color.fromARGB(255, 74, 176, 251),
                                    shape: Shape.circle,
                                    dash: <int>[5, 4]
                                ),
                              ),
                            ],
                          )
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            LittleIconFont("精简题库", Colors.red, IconData(0xe6ca, fontFamily: 'iconfont'), 45 ),
                            LittleIconFont("我的错题", Colors.deepOrange, IconData(0xe61a, fontFamily: 'iconfont'), 35 ),
                            LittleIconFont("我的收藏", Colors.deepPurple, IconData(0x3432, fontFamily: 'iconfont'), 35 ),
                            LittleIconFont("客服在线", Colors.black, IconData(0xe645, fontFamily: 'iconfont'), 35 ),
                          ],

                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.accessibility_new_rounded),
                      Text("必过神器  ", style: TextStyle(fontSize: 16),),
                      SizedBox(
                        width: 3,
                        height: 22,
                        child: DecoratedBox(
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                      ),
                      Text("  神器在手  驾照我有")
                    ],
                  ),
                ),
                Divider(height: 20, color: Colors.grey,),
              ],
            ),


            Text('科目四'),
            Text('满分学习'),
            Text('恢复')
          ],
        ),
      ),
    );
  }

}
