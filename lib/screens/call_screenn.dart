import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image4.png"), fit: BoxFit.fill)),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      foregroundImage: AssetImage("assets/Image7.png"),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Др. Бирханова",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.30,
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Image(image: AssetImage("assets/dot.png")),
                            Text(
                              "19:00 минут",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.black,
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        height: 45,
                        color: Colors.white,
                        shape: const CircleBorder(),
                        onPressed: () {},
                        child: Icon(Icons.volume_up,
                            color: Colors.purple.shade900),
                      ),
                      MaterialButton(
                        height: 45,
                        color: Colors.white,
                        shape: const CircleBorder(),
                        onPressed: () {},
                        child: const Icon(
                          Icons.call,
                          color: Colors.red,
                        ),
                      ),
                      MaterialButton(
                        height: 45,
                        color: Colors.white,
                        shape: const CircleBorder(),
                        onPressed: () {},
                        child: Icon(
                          Icons.volume_mute_rounded,
                          color: Colors.purple.shade900,
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
