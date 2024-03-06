import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 220,
              child: PageView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index){
                    String title = "";
                    String subtitle = "";
                    String author = "";
                    String readTime = "";
                    Color boxColor = Colors.transparent;
                    Color titleColor = Colors.transparent;
                    Color titleBackgroundColor = Colors.transparent;
                    Color textColor = Colors.transparent;

                    if(index == 0) {
                      title = "Design Thinking";
                      subtitle = "Making design thinking inclusive";
                      author = "John Doe";
                      readTime = "5 min read";
                      boxColor = const Color(0xFF7E6DD2);
                      titleColor = const Color(0xFFAA97FF);
                      titleBackgroundColor = Colors.white;
                      textColor = Colors.white;
                    }
                    else if(index == 1) {
                      title = "User Experience Design";
                      subtitle = "Creating delightful user experiences";
                      author = "Jane Smith";
                      readTime = "7 min read";
                      boxColor = const Color(0xFFFFD264);
                      titleColor = const Color(0xFFFFD264);
                      titleBackgroundColor = Colors.black;
                      textColor = Colors.black;
                    }
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: boxColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 25, top: 25),
                                  child: Text(title, style: TextStyle(backgroundColor: titleBackgroundColor, color: titleColor, fontSize: 16)),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 25, top: 25),
                                child: Icon(Icons.bookmark_outline),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 25),
                            child: Text(subtitle, style: TextStyle(color: textColor, fontSize: 24, fontWeight: FontWeight.w500),),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 40, left: 25),
                                  child: Text(author, style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w300)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 40, right: 25),
                                child: Text(readTime,  style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w300)),
                              )
                            ],
                          )
                        ],

                      ),
                    );
                  }
              ),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}