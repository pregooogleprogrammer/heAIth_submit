import 'package:flutter/material.dart';
import 'package:flutterworks/pages/post/update_page.dart';
import 'package:get/get.dart';

import 'home_page.dart';

class SearchPage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    // String data = Get.arguments;



    return Scaffold(
        appBar: AppBar(
            title: Text("병원 검증하기"),
            centerTitle: true,
            backgroundColor: Colors.green

        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "의료기관평가인증원의 의료기관 인증 확인 페이지로 리다이렉션 합니다. ***의료기관평가인증원, 의료기관 인증 확인: https://www.koiha.or.kr/web/kr/assessment/accStatus.do***",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25)
                ),
           ],
          ),
        )
    );
  }
}
