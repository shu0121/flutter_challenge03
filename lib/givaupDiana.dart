import 'package:flutter/material.dart';
import 'package:flutter_challenge03/home.dart';
import 'package:flutter_challenge03/constants.dart';

class GiveUp extends StatefulWidget {
  const GiveUp({Key? key}) : super(key: key);

  @override
  State<GiveUp> createState() => _GiveUpState();
}

class _GiveUpState extends State<GiveUp> {
  double _value = 0;

  bool _playing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: ()=>Navigator.of(context).pop(),
                  icon: const Icon(Icons.chevron_left, color: Colors.white,),
              ),
            ),
          ),
          Container(
            width: 350,
            child: Image.asset('images/musicPic/IMG_2275.jpg'),
          ),
          SizedBox(height: 30,),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Give Up', style: categoryStyle,),
                const Text('Diana Ross', style: subTitleStyle,),
              ],
            ),
          ),
          SizedBox(height: 30,),
          SliderTheme(
              data: SliderThemeData(
                thumbColor: Colors.white,
                activeTrackColor: Colors.white,
                inactiveTrackColor: Colors.white54,
              ),
              child: Slider(
                  value: _value,
                  onChanged: (newValue){
                    setState(() {
                      _value = newValue;
                    });
                  }
              ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('0:00', style: subTitleStyle,),
                const Text('5:00', style: subTitleStyle,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60,),
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous, color: Colors.white, size: 60,),),
                SizedBox(width: 50,),
                IconButton(
                  onPressed: (){
                    setState((){
                      _playing = !_playing;
                    });
                  },
                  icon: !_playing ? const Icon(Icons.play_circle, color: Colors.white, size: 70,): const Icon(Icons.pause_circle, color: Colors.white, size: 70,),
                ),
                SizedBox(width: 55,),
                IconButton(onPressed: (){}, icon: Icon(Icons.skip_next, color: Colors.white, size: 60,),),
              ],
            ),
          ),

        ],


        // SafeArea(
        //       child: Container(
        //         padding: const EdgeInsets.symmetric(vertical: 20,),
        //         child: IconButton(
        //             onPressed: ()=>Navigator.of(context).pop(),
        //             icon: const Icon(Icons.chevron_left, color: Colors.white,)
        //         ),
        //       ),
        //   ),
        //   Container(
        //     child: Image.asset('images/musicPic/IMG_2275.jpg'),
        //   ),
      ),
    );
  }
}
