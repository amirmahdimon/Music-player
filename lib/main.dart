import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getApplication();
  }
}

Widget getApplication() {
  return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/mont.jpg'),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: getBody(),
        ),
      ),
    ),
  );
}

Widget getBody() {
  return Column(
    children: [
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('hans zimmer.mp3');
                },
                child: Text(
                  'Hans Zimmer S.T.A.Y',
                  style: TextStyle(
                    color: Color.fromARGB(
                        255, 255, 255, 255), // تغییر رنگ فونت به آبی
                    fontSize: 25, // افزایش اندازه فونت به 20
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('bilie.mp3');
                },
                child: Text(
                  'Billie:TV',
                  style: TextStyle(
                    color: Color.fromARGB(
                        255, 255, 255, 255), // تغییر رنگ فونت به آبی
                    fontSize: 25, // افزایش اندازه فونت به 20
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('crime.mp3');
                },
                child: Text(
                  'O.V : Favorite Crime',
                  style: TextStyle(
                    color: Colors.white, // تغییر رنگ فونت به آبی
                    fontSize: 25, // افزایش اندازه فونت به 20
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('javanan.mp3');
                },
                child: Text(
                  'AZ khoone Javanan',
                  style: TextStyle(
                    color: Colors.white, // تغییر رنگ فونت به آبی
                    fontSize: 25, // افزایش اندازه فونت به 20
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('pink.mp3');
                },
                child: Text(
                  'Education:P.F',
                  style: TextStyle(
                    color: Color.fromARGB(
                        255, 255, 255, 255), // تغییر رنگ فونت به آبی
                    fontSize: 30, // افزایش اندازه فونت به 20
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('parvaz.mp3');
                },
                child: Text(
                  'Par Parvaz',
                  style: TextStyle(
                    color: Colors.white, // تغییر رنگ فونت به آبی
                    fontSize: 30, // افزایش اندازه فونت به 20
                  ),
                ),
              ),
            )
          ],
        ),
      )
    ],
  );
}

playSound(String sound) {
  var player = AudioCache();
  player.play(sound);
}
