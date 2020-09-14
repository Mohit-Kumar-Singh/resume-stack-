import 'package:flutter/material.dart';

import 'bottom.dart';

void main() {
  runApp(MaterialApp(
    home: Resume(),
    debugShowCheckedModeBanner: false,
  ));
}

class Resume extends StatelessWidget {
  Widget heading(
      text, double fsize, color, double thick, double ind, double end) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: fsize,
            fontFamily: 'PlayFair',
            color: color,
          ),
        ),
        Divider(
          thickness: thick,
          color: color,
          indent: ind,
          endIndent: end,
        )
      ],
    );
  }

  Widget customText(
    text,
    //double fsize,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.chevron_right,
          color: Colors.white,
          size: 15,
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          bottomNavigationBar: Bottom(),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(2, 6, 2, 0),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1, color: Colors.white)),
                    child: CircleAvatar(
                      radius: height * .07,
                      backgroundImage: AssetImage('images/mypic.jpg'),
                    ),
                  ),
                ),
                Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          heading('MOHIT KUMAR SINGH ', 20, Colors.white, 2, 40,
                              40),
                          Text(
                            'Conatus Trainee',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      //color: Colors.white,
                      height: MediaQuery.of(context).size.height * .14,
                      width: MediaQuery.of(context).size.width * .62,
                    )),
                Positioned(
                    left: 0,
                    bottom: 0,
                    child: Container(
                      child: Column(
                        children: [
                          heading(
                              'SKILLS', 18.0, Colors.white, 1.0, 10.0, 10.0),
                          customText('C'),
                          customText('C++'),
                          customText('Flutter '),
                          customText('Management'),
                          SizedBox(
                            height: 12,
                          ),
                          heading('HOBBIES', 18, Colors.white, 1.0, 10.0, 10.0),
                          customText('Art'),
                          customText('Craft'),
                          customText('Badminton'),
                          customText('Movies/Series'),
                        ],
                      ),
                      height: MediaQuery.of(context).size.height * .60,
                      width: MediaQuery.of(context).size.width * .36,
                    )),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          heading('ABOUT ME', height * 0.035, Colors.black, 1,
                              50, 0),
                          Text(
                            'Responsible and ambitious student with excellent time management. Aiming to use knowledge and resources to combine technology with creativity / art . Possess proper communication skills and strong work ethics that will aid our team in meeting its future milestones',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: width * .037),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          heading('EDUCATION', height * 0.035, Colors.black, 1,
                              40, 0),
                          Text(
                            'Bachelor of Technology,',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: width * .05,
                            ),
                          ),
                          Text(
                            ' Computer Science',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            '2 nd Year/AKGEC',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              //fontSize: height * 0.022,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            '12th ,  93.2% PCM',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: width * .05,
                            ),
                          ),
                          Text(
                            'Blooming Dale School',
                            style: TextStyle(
                              //fontFamily: 'PlayFair',
                              fontStyle: FontStyle.italic,
                              // fontSize: height * 0.022,
                            ),
                          ),
                          Text(
                            ' Badaun, U.P',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              // fontSize: height * 0.022,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.white.withOpacity(.4),
                          //     spreadRadius: 5,
                          //     blurRadius: 7,
                          //     offset:
                          //         Offset(-3, -9), // changes position of shadow
                          //   ),
                          // ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(34))),
                      height: height * .65,
                      width: width * .62,
                    ))
              ],
            ),
          )),
    );
  }
}
