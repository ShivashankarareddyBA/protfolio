import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyAbout extends StatefulWidget {
  const MyAbout({Key? key}) : super(key: key);

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
            child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
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
                    top: MediaQuery.of(context).size.height * 0.60),
                child: Column(
                  children: [
                    const Text(
                      'Hello I am ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'B A Shivashankarareddy',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Application Developer",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 150,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'profile');
                        },
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.green),
                        child: const Text('Hire Me'),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(icon: const Icon( EvaIcons.googleOutline, size: 50, color:
                              Colors.redAccent,),
                                onPressed: () {},
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            IconButton(icon: const Icon( EvaIcons.twitterOutline, size: 50, color:
                            Colors.blue,),
                              onPressed: () {},
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            IconButton(icon: const Icon( EvaIcons.linkedinOutline, size: 50, color:
                            Colors.blueAccent,),
                              onPressed: () {},
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            IconButton(icon: const Icon( EvaIcons.github, size: 50, color:
                            Colors.black,),
                              onPressed: () {},
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            IconButton(icon: const Icon( EvaIcons.facebookOutline, size: 50, color:
                            Colors.purpleAccent,),
                              onPressed: () {},
                            ),

                          ],
                        ),
                      ],
                    )
                  ],
                ))
          ],
        )));
  }
}
