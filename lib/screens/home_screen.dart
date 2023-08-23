import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  void changeSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            changeSelectedIndex(index);
          },
          currentIndex: selectedIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          backgroundColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: "Date"),
            BottomNavigationBarItem(
                icon: Icon(Icons.file_copy_outlined), label: "File"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "Profile"),
          ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 50, 8, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.indigo.shade800,
              ),
              height: MediaQuery.of(context).size.height * 0.28,
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                ListTile(
                  tileColor: Colors.red,
                  textColor: Colors.white,
                  leading: const CircleAvatar(
                    radius: 30,
                    foregroundImage: AssetImage("assets/profile2.png"),
                  ),
                  title: const Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "Добро пожаловать  🎉",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  subtitle: const Text("Афанасий Пупкин",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  trailing: Card(
                    color: Colors.indigo.shade800,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.white12,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: IconButton(
                        icon: const Icon(
                          Icons.notifications_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 15, 8, 10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                // updateStatus();
                              },
                              child: const Icon(
                                Icons.vertical_distribute,
                                color: Colors.white,
                              )),
                          fillColor: Colors.indigo.shade800,
                          filled: true,
                          hintText: "  Найти доктора. . .",
                          focusColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 5.0),
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                ),
              ]),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 15, 12, 12),
              child: Text(
                "Твои симптомы ❓",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.indigo.shade800),
                      child: const Center(
                        child: Text(
                          "🤧 Чихание",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black12),
                      child: const Center(
                        child: Text(
                          "🤒 Температура ️",
                          style: TextStyle(color: Colors.black38, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.23,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black12),
                      child: const Center(
                        child: Text(
                          "🤮 Рвота ️",
                          style: TextStyle(color: Colors.black38, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.23,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black12),
                      child: const Center(
                        child: Text(
                          "🤮 Рвота ️",
                          style: TextStyle(color: Colors.black38, fontSize: 18),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Избранные врачи",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Избранные врачи",
                      style: TextStyle(
                          fontSize: 19, color: Colors.indigo.shade800)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 200,
                      width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Card(
                        elevation: 15,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Image(
                                fit: BoxFit.cover,
                                height: 120,
                                image: AssetImage("assets/profile3.png")),
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    "Др. Айкызы",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: SizedBox(
                                    child: Icon(
                                      Icons.star_border,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: SizedBox(
                                    child: Text(
                                      "4.5",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text("Диетолог "),
                            ),
                          ],
                        ),
                      )),
                  Container(
                      height: 200,
                      width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Card(
                        elevation: 15,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Image(
                                fit: BoxFit.cover,
                                height: 120,
                                image: AssetImage("assets/profile4.png")),
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    "Др. Айкызы",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: SizedBox(
                                    child: Icon(
                                      Icons.star_border,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: SizedBox(
                                    child: Text(
                                      "4.5",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text("Диетолог "),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 1, 10, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Лучший доктор",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Избранные врачи",
                        style: TextStyle(
                            fontSize: 19, color: Colors.indigo.shade800)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.14,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width * 0.27,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: const Image(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/profile5.png"))),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 5, 15, 0),
                                child: Text("Др. Алмаз Тогыз",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(25, 5, 15, 0),
                                child: Icon(
                                  Icons.favorite_outlined,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 3),
                            child: Text(" __________________________",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold)),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                            child: Text("Кардиолог | Ведущий врач",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 16)),
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: SizedBox(
                                  child: Icon(
                                    Icons.star_border,
                                    color: Colors.yellow,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 5, 10, 1),
                                child: Text(
                                  "4.7 (7.932 отзывов)",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )
                        ],
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
