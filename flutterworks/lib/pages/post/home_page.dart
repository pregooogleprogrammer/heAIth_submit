import 'package:flutter/material.dart';
import 'package:flutterworks/pages/post/detail_page.dart';
import 'package:flutterworks/pages/post/write_page.dart';
import 'package:flutterworks/pages/user/login_page.dart';
import 'package:flutterworks/pages/user/user_info.dart';
import 'package:flutterworks/size.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  List<String> mainList = ["진단서-2023.09.07-고혈압성 신장질환", "진단서-2023.03.22-혈관부종"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _navigation(context),
      appBar: AppBar(
        title: Text("전체 진단서 및 처방서 열람"),
        centerTitle: true,
        backgroundColor: Colors.green
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Get.to(DetailPage(index), arguments: "arguments 속성 테스트");
              },
              title: Container(
                alignment: Alignment.centerLeft,
                height: 25,
                child: Text(mainList[index], textAlign: TextAlign.start,),
              ),
              leading: Text("기록"),
            );

          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: mainList.length),

    );
  }

  Widget _navigation(BuildContext context) {
    return Container(
      width: getDrawerWidth(context),
      height: double.infinity,
      color: Colors.green,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: (){
                  Get.to(WritePage());
                },
                child: Text(
                  "진료 내용 작성, 진단서",
                  style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold,
                    color:Colors.black54,
                  ),
                ),
              ),
              Divider(),
            TextButton(
                onPressed: (){
                  Get.to(UserInfo());
                },
            child: Text(
                "병원 예약하기",
                style: TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.bold,
                  color:Colors.black54,
            ),
            ),
    ),
              Divider(),
              TextButton(
                onPressed: (){
                  Get.to(LoginPage());
                },
                child: Text(
                  "로그아웃",
                  style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold,
                    color:Colors.black54,
                  ),
                ),

              ),
              Divider(),
    ]
          ),
        ),
      )
    );
  }
}
