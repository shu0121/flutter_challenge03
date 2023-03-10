import 'package:flutter/material.dart';
import 'package:flutter_challenge03/constants.dart';
import 'package:flutter_challenge03/givaupDiana.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            SafeArea(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        // blurRadius: 50,
                        // offset: Offset(1.5, 1.5),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 170,),
                      Text('ホーム',style: categoryStyle,),
                      SizedBox(width: 113,),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: Colors.white,)),
                    ],
                  ),
                ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('あなたへのおすすめ', style: categoryStyle,),
                  const Icon(Icons.chevron_right, color: Colors.white,),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10,),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const GiveUp()));
                    },
                    child: Container(
                      width: 135,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset('images/musicPic/IMG_2275.jpg'),
                          ),
                          SizedBox(height: 5,),
                          Text('Give Up', style: titleStyle,),
                          Text('Diana Ross', style: subTitleStyle,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    child: Container(
                      width: 135,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset('images/musicPic/IMG_2274.jpg'),
                          ),
                          SizedBox(height: 5,),
                          Text('New Rules', style: titleStyle,),
                          Text('Dua Lipa', style: subTitleStyle,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    child: Container(
                      width: 135,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset('images/musicPic/IMG_2276.jpg'),
                          ),
                          SizedBox(height: 5,),
                          Text('Somebody', style: titleStyle,),
                          Text('Justin bieber', style: subTitleStyle,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    child: Container(
                      width: 135,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset('images/musicPic/IMG_2275.jpg'),
                          ),
                          SizedBox(height: 5,),
                          Text("I'm Coming Out", style: titleStyle,),
                          Text('Diana Ross', style: subTitleStyle,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('カテゴリー', style: categoryStyle,),
                  const Icon(Icons.chevron_right, color: Colors.white,),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10,),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple,
                        ),
                        child: Text('クラッシック', style: titleStyle,),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 80,
                        width: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber,
                        ),
                        child: Text('カントリー', style: titleStyle,),
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink,
                        ),
                        child: Text('ポップ', style: titleStyle,),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 80,
                        width: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.lightBlue,
                        ),
                        child: Text('ロック', style: titleStyle,),
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.lightGreen,
                        ),
                        child: Text('ジャズ', style: titleStyle,),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 80,
                        width: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.brown,
                        ),
                        child: Text('バラード', style: titleStyle,),
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepOrangeAccent,
                        ),
                        child: Text('R&B', style: titleStyle,),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 80,
                        width: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.indigo,
                        ),
                        child: Text('ソウル', style: titleStyle,),
                      ),
                    ],
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
