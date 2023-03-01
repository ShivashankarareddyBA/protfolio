import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,

      appBar: AppBar(
        centerTitle: true,
        title: const Center(

          child: Text('About Me '),

                  ),
      ),

      body: ListView(

        children: <Widget>[

          Container(

            height: 250,

            decoration: const BoxDecoration(

              gradient: LinearGradient(

                colors: [Colors.purpleAccent, Colors.blueAccent],

                begin: Alignment.centerLeft,

                end: Alignment.centerRight,

                stops: [0.5, 0.9],

              ),

            ),

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,

              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[

                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: const <Widget>[

                    CircleAvatar(

                      backgroundColor: Colors.blueAccent,

                      minRadius: 35.0,

                      child: Icon(

                        Icons.call,

                        size: 30.0,

                      ),

                    ),

                    CircleAvatar(

                      backgroundColor: Colors.white70,

                      minRadius: 60.0,

                      child: CircleAvatar(

                        radius: 50.0,

                        backgroundImage: AssetImage('assets/myphoto.jpeg')


                      ),

                    ),

                    CircleAvatar(

                      backgroundColor: Colors.purpleAccent,

                      minRadius: 35.0,

                      child: Icon(

                        Icons.message,

                        size: 30.0,

                      ),

                    ),

                  ],

                ),

                const SizedBox(

                  height: 10,

                ),

                const Text('B. A Shivashankarareddy BE (CSE)',

                  style: TextStyle(

                    fontSize: 22,

                    fontWeight: FontWeight.bold,

                    color: Colors.white,

                  ),

                ),

                const Text(

                  'Flutter Developer',

                  style: TextStyle(

                    color: Colors.white,

                    fontSize: 22,

                  ),

                ),

              ],

            ),

          ),

          Container(

            child: Row(

              children: <Widget>[

                Expanded(

                  child: Container(

                    color: Colors.blueAccent,

                    child: const ListTile(

                      title: Text(

                        '5000',

                        textAlign: TextAlign.center,

                        style: TextStyle(

                          fontWeight: FontWeight.bold,

                          fontSize: 30,

                          color: Colors.white,

                        ),

                      ),

                      subtitle: Text(

                        'Followers',

                        textAlign: TextAlign.center,

                        style: TextStyle(

                          fontSize: 20,

                          color: Colors.white70,

                        ),

                      ),

                    ),

                  ),

                ),

                Expanded(

                  child: Container(

                    color: Colors.purpleAccent,

                    child: const ListTile(

                      title: Text(

                        '5000',

                        textAlign: TextAlign.center,

                        style: TextStyle(

                          fontWeight: FontWeight.bold,

                          fontSize: 30,

                          color: Colors.white,

                        ),

                      ),

                      subtitle: Text(

                        'Following',

                        textAlign: TextAlign.center,

                        style: TextStyle(

                          fontSize: 20,

                          color: Colors.white70,

                        ),

                      ),

                    ),

                  ),

                ),

              ],

            ),

          ),

          Column(

            children: const <Widget>[

               ListTile(

                title: Text(

                  'Email',

                  style: TextStyle(

                    color: Colors.blueAccent,

                    fontSize: 20,

                    fontWeight: FontWeight.bold,

                  ),

                ),

                subtitle: Text(

                  'reddy.shiva850@gmail.com',

                  style: TextStyle(

                    fontSize: 18,

                  ),

                ),

              ),

              Divider(
                height: 5,
              ),

              ListTile(

                title: Text(

                  'GitHub',

                  style: TextStyle(

                    color: Colors.blueAccent,

                    fontSize: 20,

                    fontWeight: FontWeight.bold,

                  ),

                ),

                subtitle: Text(

                  'https://github.com/ShivashankarareddyBA',

                  style: TextStyle(

                    fontSize: 18,

                  ),

                ),

              ),

              Divider(
                height: 5,
              ),

              ListTile(

                title: Text(

                  'Linkedin',

                  style: TextStyle(

                    color: Colors.blueAccent,

                    fontSize: 20,

                    fontWeight: FontWeight.bold,

                  ),

                ),

                subtitle: Text(

                  'www.linkedin.com/in/shiva-reddy-b93187249',

                  style: TextStyle(

                    fontSize: 18,

                  ),

                ),

              ),
              Divider(
                height: 5,
              ),

              ListTile(

                title: Text(

                  'BE (CSE) Studied In',

                  style: TextStyle(

                    color: Colors.blueAccent,

                    fontSize: 20,

                    fontWeight: FontWeight.bold,

                  ),

                ),

                subtitle: Text(

                  'AMC Eng. Collage bangalore-560083',

                  style: TextStyle(

                    fontSize: 18,

                  ),

                ),

              ),
              Divider(
                height: 5,
              ),

              ListTile(

                title: Text(

                  'Diploma (CSE) Studied In',

                  style: TextStyle(

                    color: Colors.blueAccent,

                    fontSize: 20,

                    fontWeight: FontWeight.bold,

                  ),

                ),

                subtitle: Text(

                  'M E S Polytechnic',

                  style: TextStyle(

                    fontSize: 18,

                  ),

                ),

              ),

              ListTile(

                title: Text(

                  'Mobile Number',

                  style: TextStyle(

                    color: Colors.blueAccent,

                    fontSize: 20,

                    fontWeight: FontWeight.bold,

                  ),

                ),

                subtitle: Text(

                  '+91 9916838182',

                  style: TextStyle(

                    fontSize: 18,

                  ),

                ),

              ),

            ],

          )

        ],

      ),

    );
  }
}
