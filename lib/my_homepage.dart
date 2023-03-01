import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  myAchiev(num, type) {
    return Row(
      children: [
        Text(
          num,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Container(margin: const EdgeInsets.only(top: 10), child: Text(type))
      ],
    );
  }

  mySpec(icon, tech) {
    return (Container(
      width: 105,
      height: 115,
      child: Card(
        margin: const EdgeInsets.all(0),
        color: const Color(0xFF42A5F5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                tech,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          color: Colors.blueAccent,
          icon: Icon(Icons.menu),
          itemBuilder: (context) => [
            PopupMenuItem(child: TextButton(
              child:  Text ('Projects',style: TextStyle(
                  color: Colors.white
              )),
              onPressed: () {
                Navigator.pushNamed(context, 'projects');

              },
            ),
            value: 1,
            ),
            PopupMenuItem(child: TextButton(
              child:  Text ('About Me', style: TextStyle(
                color: Colors.white
              ),),
              onPressed: () {
                Navigator.pushNamed(context, 'about');

              },
            ),
              value: 2,)
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snapping relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 35),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [Colors.black, Colors.transparent])
                        .createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'assets/myphoto.jpeg',
                    height: 580,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.53),
                child: Column(
                  children: const [
                    Text(
                      'B A Shivashankarareddy',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Application Developer",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),

        builder: (context, state) {

          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.

          return Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            height: 500,
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myAchiev('4', ' Projects'),
                    myAchiev('2', ' Client'),
                    myAchiev('60', ' Messages'),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Specialized In',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(Icons.android, 'Android'),
                        mySpec(Icons.flutter_dash, 'Flutter'),
                        mySpec(Icons.language, 'Dart'),

                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(Icons.web, 'Web'),
                       mySpec(Icons.games, 'Portfolio'),
                        mySpec(Icons.language, 'Kotlin Lerner'),
                      ],
                    ),

                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
