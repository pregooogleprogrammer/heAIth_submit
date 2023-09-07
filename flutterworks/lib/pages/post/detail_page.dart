import 'package:flutter/material.dart';
import 'package:flutterworks/pages/post/update_page.dart';
import 'package:get/get.dart';

import 'home_page.dart';

class DetailPage extends StatelessWidget {


  final int id;

  const DetailPage(this.id);



  @override
  Widget build(BuildContext context) {

    // String data = Get.arguments;



    return Scaffold(
      appBar: AppBar(
          title: Text("진단서 및 처방전 열람"),
          centerTitle: true,
          backgroundColor: Colors.green

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "진단서-2023.09.07-고혈압성 신장질환",
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25)
            ),
            Divider(),
            Row(
              children: [
                ElevatedButton(
                  onPressed: (){
                    Get.off(HomePage());
                  },
                  child:Text("삭제"),
                ),
                SizedBox(width:10),
                ElevatedButton(
                  onPressed: (){
                    Get.to(UpdatePage());
                  },
                  child:Text("수정"),
                ),
              ],
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Text("\n환자의 성명: 김채현\n\n환자의 주민등록번호: 000000-000000\n\n환자의 주소: 서울특별시 AI길 AI0\n\n병명: 고혈압성 심장병\n\n질병분류번호: I11\n\n발병 연월일: 2023년 9월 2일\n\n진단 연월일: 2023년 9월 7일\n\n치료 내용 및 향후 치료에 대한 소견: 자기관리 및 꾸준한 약 복용\n\n입원, 퇴원: -\n\n비고: -\n\n*******************\n\n처방전\n\n2023-03-22 진단서 및 처방전에 혈관부종으로 인해 내원함. '안지오텐신, 안지오텐신Ⅱ 수용체 차단제(혈관부종 환자의 경우 복용 불가)' 대신 이뇨제 성분의 '아모잘탄플러스정(643507800)'을 처방.한다"),
              ),
            ),

          ]
        ),
      )
    );
  }
}
