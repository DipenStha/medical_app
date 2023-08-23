import 'package:flutter/material.dart';
import 'package:medical_app/screens/home_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.indigo.shade800,
            ),
            child: const Image(image: AssetImage("assets/profile1.png")),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.07,
              left: 15,
              child: const Text(
                "HealTec",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.6,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: SizedBox(
                            height: 90,
                            width: MediaQuery.of(context).size.width,
                            child: const Center(
                              child: Text(
                                "Более комфортный чат с доктором",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: SizedBox(
                            height: 90,
                            width: MediaQuery.of(context).size.width,
                            child: const Center(
                              child: Text(
                                "Запишитесь на прием к врачу. Пообщайтесь с врачом через видеозвонок и получите консультацию.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.circle,
                            color: Colors.black38,
                          ),
                          const Icon(Icons.rectangle_sharp)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.indigo.shade800,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                            },
                            child: const Text(
                              "Начать ",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      )
                    ]),
              ))
        ],
      ),
    ));
  }
}
