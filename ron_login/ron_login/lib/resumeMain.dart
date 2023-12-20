import 'package:flutter/material.dart';
import 'package:ron_login/skills.dart';
import 'package:ron_login/certificate.dart';
import 'package:ron_login/personal.dart';
import 'package:ron_login/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




import 'package:http/http.dart' as http;
import 'dart:convert';



class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 238, 237, 238),
        appBar: AppBar(
          title: const Center(
            child: Text('My Curriculum Vitae'),
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/picture/ron.jpg'),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Ronald C. Abella Jr.",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Address: Poblacion Purok 2, Dasol, Pangasinan",
                style: TextStyle(fontSize: 20),
              ),
               SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.lightBlue,
                    ),
                    Text(
                      "09882775621",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
               const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(children: [
                  Icon(Icons.email, color: Colors.lightBlue),
                  Text(
                    "roncunahap14@gmail.com",
                    style: TextStyle(fontSize: 20),
                  ),
                ]),
              ),
              const SizedBox(height: 20),
              const Text(
                "Job Position",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Power Forward",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Row(
                children:[
                  IconButton(
                    iconSize: 40,
                    icon:const Icon(
                      IconData(0xe043, fontFamily: 'MaterialIcons'),
                      color: Colors.lightBlue,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => personal(), // Use the correct widget name here
                      ),
                    );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children:[
                  IconButton(
                    iconSize: 40,
                    icon: const Icon(
                      IconData(0xf69b, fontFamily: 'MaterialIcons'),
                      color: Colors.lightBlue,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => certificate(), // Use the correct widget name here
                      ),
                    );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children:[
                  IconButton(
                    iconSize: 40,
                    icon: const Icon(
                      IconData(0xe57f, fontFamily: 'MaterialIcons'),
                      color: Colors.lightBlue,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => skills(), // Use the correct widget name here
                      ),
                    );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
}