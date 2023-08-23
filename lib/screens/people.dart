import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:medical_app/data/names.dart';

class People extends StatefulWidget {
  People({Key? key}) : super(key: key);

  @override
  State<People> createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                  itemCount: 3,
                  controller: _controller,
                  itemBuilder: ((context, index) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange,
                      ),
                      child: Center(
                        child: Text(
                          "${names[index]}",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
                  })),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  _controller.previousPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.bounceInOut);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 40,
                ),
              ),
              IconButton(
                  onPressed: () {
                    _controller.nextPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.bounceInOut);
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                    size: 40,
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
