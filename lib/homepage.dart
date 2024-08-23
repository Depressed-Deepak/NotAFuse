import 'package:afuse/complist.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<ComponentList> myComponents = [
    ComponentList(
      'Classroom',
      'assets/classroom.png',
    ),
    ComponentList(
      'Live Classes',
      'assets/online.png',
    ),
    ComponentList(
      'Grades',
      'assets/grades.png',
    ),
    ComponentList(
      'Assignments',
      'assets/assignment.png',
    ),
    ComponentList(
      'Quiz',
      'assets/quiz.png',
    ),
    ComponentList(
      'Announcement',
      'assets/announcement.png',
    ),
    ComponentList(
      'Attendence',
      'assets/attendence.png',
    ),
    ComponentList(
      'Exam',
      'assets/exam.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    String searchString = 'Search your app';
    return Scaffold(
      resizeToAvoidBottomInset: false, // Prevent resizing when keyboard appears
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Colors.teal,
            ),
            height: 190,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: AppBar(
                    backgroundColor: Colors.teal,
                    actions: [
                      Row(
                        children: [
                          CircleAvatar(
                            maxRadius: 20.0,
                            child: Image.asset(
                              'assets/imagesremovebg.png',
                              width: 35.0,
                              height: 35.0,
                            ),
                          ),
                          const SizedBox(
                            width: 210,
                          ),
                          CircleAvatar(
                            maxRadius: 20.0,
                            child: Image.asset(
                              'assets/text-message-icon.png',
                              width: 30.0,
                              height: 30.0,
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(right: 4.0)),
                          CircleAvatar(
                            maxRadius: 20.0,
                            child: Image.asset(
                              'assets/gintama-kagura.png',
                              width: 30.0,
                              height: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
                    child: TextField(
                      cursorColor: Colors.black26,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                      decoration: InputDecoration(
                          fillColor: Color.fromARGB(83, 8, 55, 12),
                          filled: true,
                          hintText: searchString,
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 20,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none
                              // Adjust the radius as needed
                              ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.symmetric(vertical: 12)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.white70,
                  offset: Offset(4, 4),
                  blurRadius: 8,
                  spreadRadius: 1,
                ),
              ]),
              height: 198,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(), // Disable scrolling
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          myComponents[index].image,
                          height: 50,
                          width: 50,
                        ),
                        Text(
                          myComponents[index].name.toString(),
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        )
                      ],
                    )),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 65,
                color: Colors.white38,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 2.0, 0.0, 0.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            maxRadius: 20,
                            child: Icon(Icons.home),
                          ),
                          Text(
                            'Home',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 2.0, 0.0, 0.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.notifications),
                          ),
                          Text(
                            'Notifications',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
