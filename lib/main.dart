//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:pmpb/nova_publi.dart';

main() => runApp(MainApp());

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();

  void isHideBottomNavBar(bool bool) {}
}

class _MainAppState extends State<MainApp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.red.shade800,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.grey.shade300,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add_rounded, color: Colors.black, size: 30),
            backgroundColor: Colors.red.shade800,
          ),
          appBar: appBar(),
          body: body(),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          bottomNavigationBar: SizedBox(
            height: 57,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.red.shade800,
              selectedFontSize: 15,
              selectedItemColor: Colors.grey.shade300,
              unselectedItemColor: Colors.black,
              currentIndex: currentIndex,
              onTap: (index) => setState(() => currentIndex = index),
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    label: "Perfil"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    label: "Procurar"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.groups_rounded,
                      color: Colors.black,
                    ),
                    label: "Grupos"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.bookmark,
                      color: Colors.black,
                    ),
                    label: "Salvos"),
              ],
            ),
          )),
    );
  }
}

body() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          child: Column(
            children: [
              Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                            child:
                                Image.asset("images/police.png", height: 40)),
                        Container(
                            margin: EdgeInsets.all(10),
                            child: Text.rich(TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: "Policial Santos\n",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: "Há 13min",
                                  style: TextStyle(fontSize: 10))
                            ]))),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.fromLTRB(25, 12, 0, 0),
                                child: Text(
                                  "Adolescentes são abordados com maconha",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: Image.asset("images/policial.png"))
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              margin: EdgeInsets.all(7),
                              child: Text(
                                "Suspeitos foram encontrados com maconha nas redondezas do Mangabeira.",
                                style: TextStyle(fontSize: 15),
                                textAlign: TextAlign.justify,
                              ),
                            )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.thumb_up_alt_outlined),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    "25",
                                    style: TextStyle(fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                            IconButton(
                                icon: Icon(Icons.comment_outlined),
                                onPressed: () {}),
                            IconButton(
                                icon: Icon(Icons.bookmark_border),
                                onPressed: () {}),
                            IconButton(
                                icon: Icon(Icons.share), onPressed: () {}),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 13),
                            child:
                                Image.asset("images/police.png", height: 40)),
                        Container(
                            margin: EdgeInsets.all(10),
                            child: Text.rich(TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: "Policial Barbosa\n",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: "Há 2 h",
                                  style: TextStyle(fontSize: 10))
                            ]))),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.fromLTRB(15, 20, 0, 10),
                                child: Text(
                                    "Abordagem policial na Praça da Paz",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)))
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: Image.asset("images/policial.png"))
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              margin: EdgeInsets.all(7),
                              child: Text(
                                "Jovens foram abodados e revistados em ação policial realizada na Praça da Paz, no bairro dos Bancários na noite de sexta-feira.",
                                style: TextStyle(fontSize: 15),
                                textAlign: TextAlign.justify,
                              ),
                            )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.thumb_up_alt_outlined),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    "12",
                                    style: TextStyle(fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                            IconButton(
                                icon: Icon(Icons.comment_outlined),
                                onPressed: () {}),
                            IconButton(
                                icon: Icon(Icons.bookmark_border),
                                onPressed: () {}),
                            IconButton(
                                icon: Icon(Icons.share), onPressed: () {}),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

appBar() {
  return AppBar(
    systemOverlayStyle:
        SystemUiOverlayStyle(statusBarColor: Colors.red.shade800),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("images/brasao.png", height: 40),
        Text(
          "Salvos",
          style: TextStyle(color: Colors.black),
        ),
        Text("PM-PB",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
      ],
    ),
  );
}
