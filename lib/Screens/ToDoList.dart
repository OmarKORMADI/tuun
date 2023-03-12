import 'package:flutter/material.dart';

import 'TasksList.dart';

class ToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3cb371),
      body: Container(
        padding:
            const EdgeInsets.only(top: 40, right: 20, left: 20, bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios, size: 30),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed("/profile");
                  },
                  child: Container(
                    // autogroupg2n1kWZ (CjTmwG29GGkirFqRWyg2n1)
                    margin: EdgeInsets.fromLTRB(
                        0 , 10 , 0, 0),
                    padding: EdgeInsets.fromLTRB(16,16, 17, 15),
                    width: 80,
                    height: 92,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/ellipse-2.png',
                        ),
                      ),
                    ),
                    child: Center(
                      // captureremovebgpreview242cof (143:15)
                      child: SizedBox(
                        width: 49 ,
                        height: 47,
                        child: Image.asset(
                          'assets/images/capture-removebg-preview-24-2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'You have 4 tasks :',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: TasksList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
