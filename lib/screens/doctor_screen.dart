import 'package:flutter/material.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({Key? key}) : super(key: key);

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Мой врач"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.38,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.white12,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 5,
                    child: Stack(
                      children: [
                        Positioned(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/profile6.png",
                              width: 387,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Colors.white12,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: IconButton(
                                icon: const Icon(
                                  Icons.favorite_outline,
                                  color: Colors.blue,
                                ),
                                onPressed: () {}),
                          ),
                        ),
                        const Positioned(
                            bottom: 40,
                            left: 10,
                            child: Text(
                              "Др. Бирханова ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            )),
                        const Positioned(
                            bottom: 20,
                            left: 10,
                            child: Text(
                              "Кардиолог | Ведущий врач ",
                              style: TextStyle(
                                color: Colors.black38,
                                fontSize: 13,
                              ),
                            )),
                        const Positioned(
                            bottom: 40,
                            right: 10,
                            child: Text("5.0 (332 отзывов) ")),
                        const Positioned(
                          bottom: 40,
                          right: 140,
                          child: Icon(
                            Icons.star_border,
                            color: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.17,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Card(
                                      color: Colors.blue.shade100,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                          color: Colors.white12,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                      child: IconButton(
                                          icon: const Icon(
                                            Icons.people,
                                            color: Colors.blue,
                                          ),
                                          onPressed: () {}),
                                    ),
                                    const Center(
                                      child: Text("658+",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ),
                                    const Text("Пациенты",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black38,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Card(
                                      color: Colors.blue.shade100,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                          color: Colors.white12,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                      child: IconButton(
                                          icon: const Icon(
                                            Icons.photo,
                                            color: Colors.blue,
                                          ),
                                          onPressed: () {}),
                                    ),
                                    const Center(
                                      child: Text("11+",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ),
                                    const Text("Лет опыта",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black38,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Card(
                                      color: Colors.blue.shade100,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                          color: Colors.white12,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                      child: IconButton(
                                          icon: const Icon(
                                            Icons.star,
                                            color: Colors.blue,
                                          ),
                                          onPressed: () {}),
                                    ),
                                    const Text("5.0",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    const Text("Пациенты",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black38,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Card(
                                      color: Colors.blue.shade100,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                          color: Colors.white12,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                      child: IconButton(
                                          icon: const Icon(
                                            Icons.message_outlined,
                                            color: Colors.blue,
                                          ),
                                          onPressed: () {}),
                                    ),
                                    const Text("300+",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    const Text("Отзывы",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black38,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Обо мне",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Доктор Бирханова ведущий специалист в области кардиологии и активно практикующий врач который имеет множетсво отзывов Читать далее . . . ",
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 15,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Информация о пациенте",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Полное имя : Афанасий Пупкин",
                    style: TextStyle(color: Colors.black38, fontSize: 17),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Пол  : Мужчина",
                    style: TextStyle(color: Colors.black38, fontSize: 17),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.indigo.shade700),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(
                              Icons.phone,
                              color: Colors.white,
                            ),
                            const Text(
                              "Начало звонка(14.30 - 15.00)",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            )
                          ]),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
