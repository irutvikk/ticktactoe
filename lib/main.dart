import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  runApp(
      MaterialApp(home: tictacemain(),
      ),
  );
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}
class tictacemain extends StatefulWidget {

  const tictacemain({Key? key}) : super(key: key);

  @override
  State<tictacemain> createState() => _tictacemainState();
}

class _tictacemainState extends State<tictacemain> {
  List list=["","","","","","","","",""];
  String lastpressed="o";
  String player="";
  String checkwin="0";

  void winning() {
    setState(() {
      if(list[0]=="o" && list[1]=="o" && list[2]=="o" ||
          list[3]=="o" && list[4]=="o" && list[5]=="o" ||
          list[6]=="o" && list[7]=="o" && list[8]=="o" ||
          list[0]=="o" && list[3]=="o" && list[6]=="o" ||
          list[1]=="o" && list[4]=="o" && list[7]=="o" ||
          list[2]=="o" && list[5]=="o" && list[8]=="o" ||
          list[0]=="o" && list[4]=="o" && list[8]=="o" ||
          list[2]=="o" && list[4]=="o" && list[6]=="o")
      {
        player="o won the game";
        checkwin="1";
      }
      else if(list[0]=="x" && list[1]=="x" && list[2]=="x"||
          list[3]=="x" && list[4]=="x" && list[5]=="x" ||
          list[6]=="x" && list[7]=="x" && list[8]=="x" ||
          list[0]=="x" && list[3]=="x" && list[6]=="x" ||
          list[1]=="x" && list[4]=="x" && list[7]=="x" ||
          list[2]=="x" && list[5]=="x" && list[8]=="x" ||
          list[0]=="x" && list[4]=="x" && list[8]=="x" ||
          list[2]=="x" && list[4]=="x" && list[6]=="x")
      {
        player="x won the game";
        checkwin="1";
      }
      else if(!list.contains("")){
        player="XO Draw!";
      }
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 10,
        title: Center(child: Text("Tick Tac Toe")),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Container(
          height: 50,
          width: double.infinity,
          child: Center(
              child: Text("$player",style: TextStyle(fontSize: 30))
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                height: 140,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    border: Border(right: BorderSide(width: 1),bottom: BorderSide(width: 1))),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if(list[0]=="" && checkwin=="0")
                      {
                          list[0]="x";
                            if(list.contains("")){
                              while(true) {
                                int r = Random().nextInt(8);
                                if(list[r]==""){
                                  list[r]="o";
                                  break;
                                }
                              }
                            }
                      }
                    });
                    winning();
                  },
                  child: Center(
                      child: Text(list[0],
                          style: TextStyle(fontSize: 120))),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 140,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    border: Border(bottom: BorderSide(width: 1),right: BorderSide(width: 1),left: BorderSide(width: 1))),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if(list[1]=="" && checkwin=="0")
                      {
                        list[1]="x";
                        if(list.contains("")){
                          while(true) {
                            int r = Random().nextInt(8);
                            if(list[r]==""){
                              list[r]="o";
                              break;
                            }
                          }
                        }
                      }
                    });
                    winning();
                  },
                  child: Center(
                      child: Text(list[1],
                          style: TextStyle(fontSize: 120))),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 140,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    border: Border(bottom: BorderSide(width: 1),left: BorderSide(width: 1))),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if(list[2]=="" && checkwin=="0")
                      {
                        list[2]="x";
                        if(list.contains("")){
                          while(true) {
                            int r = Random().nextInt(8);
                            if(list[r]==""){
                              list[r]="o";
                              break;
                            }
                          }
                        }
                      }
                    });
                    winning();
                  },
                  child: Center(
                      child: Text(list[2],
                          style: TextStyle(fontSize: 120))),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                height: 140,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    border: Border(top: BorderSide(width: 1),bottom: BorderSide(width: 1),right: BorderSide(width: 1))),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if(list[3]=="" && checkwin=="0")
                      {
                        list[3]="x";
                        if(list.contains("")){
                          while(true) {
                            int r = Random().nextInt(8);
                            if(list[r]==""){
                              list[r]="o";
                              break;
                            }
                          }
                        }
                      }
                    });
                    winning();
                  },
                  child: Center(
                      child: Text(list[3],
                          style: TextStyle(fontSize: 120))),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 140,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    border: Border(top: BorderSide(width: 1),bottom: BorderSide(width: 1),right: BorderSide(width: 1),left: BorderSide(width: 1))),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if(list[4]=="" && checkwin=="0")
                      {
                        list[4]="x";
                        if(list.contains("")){
                          while(true) {
                            int r = Random().nextInt(8);
                            if(list[r]==""){
                              list[r]="o";
                              break;
                            }
                          }
                        }
                        }
                    });
                    winning();
                  },
                  child: Center(
                      child: Text(list[4],
                          style: TextStyle(fontSize: 120))),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 140,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    border: Border(top: BorderSide(width: 1),bottom: BorderSide(width: 1),left: BorderSide(width: 1))),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if(list[5]=="" && checkwin=="0")
                      {
                        list[5]="x";
                        if(list.contains("")){
                          while(true) {
                            int r = Random().nextInt(8);
                            if(list[r]==""){
                              list[r]="o";
                              break;
                            }
                          }
                        }
                        }
                    });
                    winning();
                  },
                  child: Center(
                      child: Text(list[5],
                          style: TextStyle(fontSize: 120))),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                height: 140,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    border: Border(top: BorderSide(width: 1),right: BorderSide(width: 1))),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if(list[6]=="" && checkwin=="0")
                      {
                        list[6]="x";
                        if(list.contains("")){
                          while(true) {
                            int r = Random().nextInt(8);
                            if(list[r]==""){
                              list[r]="o";
                              break;
                            }
                          }
                        }
                        }
                    });
                    winning();
                  },
                  child: Center(
                      child: Text(list[6],
                          style: TextStyle(fontSize: 120))),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 140,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    border: Border(top: BorderSide(width: 1),right: BorderSide(width: 1),left: BorderSide(width: 1))),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if(list[7]=="" && checkwin=="0")
                      {
                        list[7]="x";
                        if(list.contains("")){
                          while(true) {
                            int r = Random().nextInt(8);
                            if(list[r]==""){
                              list[r]="o";
                              break;
                            }
                          }
                        }
                        }
                    });
                    winning();
                  },
                  child: Center(
                      child: Text(list[7],
                          style: TextStyle(fontSize: 120))),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 140,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    border: Border(top: BorderSide(width: 1),left: BorderSide(width: 1))),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if(list[8]=="" && checkwin=="0")
                      {
                        list[8]="x";
                        if(list.contains("")){
                          while(true) {
                            int r = Random().nextInt(8);
                            if(list[r]==""){
                              list[r]="o";
                              break;
                            }
                          }
                        }
                        }
                    });
                    winning();
                  },
                  child: Center(
                      child: Text(list[8],
                          style: TextStyle(fontSize: 120))),
                ),
              ),
            ),
          ],
        ),
        Container(height: 50,width: 120,
          margin: EdgeInsets.fromLTRB(120, 10, 120, 0),
          child: ElevatedButton(onPressed: () {
            setState(() {
              checkwin="0";
              list=["","","","","","","","",""];
              player="";
            });
          }, child: Text("Reset",style: TextStyle(fontSize: 20),)),
        ),
      ]),
    );
  }
}
