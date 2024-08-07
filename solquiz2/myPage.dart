import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  
  var recruitList = ['전남 / 해안 / 5MWh', '전남 / 해안 / 5MWh', '전남 / 해안 / 5MWh',];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset('image/solQuiz_logo1.png',width: 130,),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.add_alert),
            style: ButtonStyle(
              iconColor: MaterialStateProperty.all<Color>(Colors.grey),
            ),
            onPressed: (){
              print('icon alert');
            },
          ),
          IconButton(
            icon: Icon(Icons.logout_outlined),
            style: ButtonStyle(
              iconColor: MaterialStateProperty.all<Color>(Colors.grey),
            ),
            onPressed: (){
              print('icon logout');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            padding: EdgeInsets.fromLTRB(12, 0, 0, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('마이페이지', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
                
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1.5,
                  blurRadius: 5,
                  offset: Offset(0, 3), // 그림자 위치 변경
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        'image/moomin9.jpg',
                        width: 50,height: 50,),
                      borderRadius: BorderRadius.all(Radius.circular(80)),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('사용자 이름',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),),
                        Text('andslkfj@smhrd.com', style: TextStyle(fontSize: 15, color: Colors.grey, ),)
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('profile edit',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        // alignment: Alignment(x, y),
                        backgroundColor: Colors.grey,
                        minimumSize: Size(17, 10),
                        // fixedSize: Size(30, 7),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1.5,
                  blurRadius: 5,
                  offset: Offset(0, 3), // 그림자 위치 변경
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('발전소 관리', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                SizedBox(height: 8,),
                Row(
                  children: [
                    SizedBox(width: 8,),
                    TextButton(
                      onPressed: (){} ,
                      child: Text('내 발전소 현황',
                        style: TextStyle(fontSize: 18, color: Colors.black),),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 8,),
                    TextButton(
                      onPressed: (){} ,
                      child: Text('내 발전소 정보 수정하기',
                        style: TextStyle(fontSize: 18, color: Colors.black),),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1.5,
                  blurRadius: 5,
                  offset: Offset(0, 3), // 그림자 위치 변경
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('발전소 모집 현황', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          minimumSize: Size(12, 10),
                        ),
                        child: Text('모집 마감',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () => {}
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios_outlined),
                      style: ButtonStyle(
                        iconColor: MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      onPressed: (){
                        print('발전소 모집 현황 자세히 보기');
                      },
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('목표 : 20MWh', style: TextStyle(fontSize: 19,),),
                        Text('70%', style: TextStyle(fontSize: 19,),),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(width: double.infinity, height: 1, color: Colors.grey[200],),
                SizedBox(height: 10,),
                Scrollbar(
                  thickness: 1.0,
                  radius: Radius.circular(8.0),

                  child: ListView.builder(
                    primary: false,
                      shrinkWrap: true, // 내부 콘텐츠에 맞춰서 높이 결정
                      itemCount: recruitList.length,
                      itemBuilder: (context, index) =>
                          GestureDetector(
                            child: Container(
                              height: 30,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${index +1}. ${recruitList[index]}'),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey,
                                      minimumSize: Size(12, 10),
                                    ),
                                    child: Text('승인 완료',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                      ),
                                    ),
                                    onPressed: () => {}
                                  ),
                                ],
                              ),
                            ),
                          )
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// 승인 완료 & 승인 대기 on/off
class Approve extends StatelessWidget {
  Approve(this._Approve);

  final bool _Approve;

  @override
  Widget build(BuildContext context) {
    if (_Approve) {
      return const Text('승인 완료');
    } else {
      return const Icon(Icons.star_border);
    }
  }
}