import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  PageViewDemo({Key? key}) : super(key: key);

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  final PageController _controller = PageController();
  bool reverse = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page View"),
        centerTitle: true,
      ),
      body: PageView.builder(
        controller: _controller,
        reverse: false,
        itemCount: 10,
        itemBuilder: ((context, index) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.3,
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                    child: Text(
                  "$index",
                  style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        child: GestureDetector(
                            onTap: () {
                              _controller.previousPage(
                                  duration: Duration(seconds: 01),
                                  curve: Curves.fastOutSlowIn);
                            },
                            child: Icon(Icons.arrow_back)),
                      ),
                      Card(
                        child: GestureDetector(
                            onTap: () {
                              _controller.nextPage(
                                  duration: Duration(seconds: 01),
                                  curve: Curves.easeInOutQuart);
                            },
                            child: Icon(Icons.arrow_forward)),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
