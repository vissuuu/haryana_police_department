import 'package:flutter/material.dart';

class your_leave extends StatefulWidget {  @override
State<StatefulWidget> createState() => your_leaveState();
}

class your_leaveState extends State<your_leave> {
  var status = "all";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                // color: Colors.black,
                  color: const Color(0xFFF3F3F3),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  Flexible(
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            status = "all";
                          });
                        },
                        child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: SizedBox(
                              height: 38,
                              child: Column(
                                children: [
                                  Flexible(
                                      fit: FlexFit.tight,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          gradient: status == "all"? const LinearGradient(
                                            begin: Alignment.bottomLeft,
                                            end: Alignment.topRight,
                                            colors: [
                                              Color(0xFF2F3374),
                                              Color(0xFF682242)
                                            ],
                                          ) : const LinearGradient(colors: [Color(0xFFF3F3F3),Color(0xFFF3F3F3)]),
                                        ),
                                        child: Center(child: Text("All", style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: status == "all"? Colors.white:Colors.black),)),
                                      )
                                  )
                                ],
                              ),
                            )
                        ),
                      )
                  ),
                  Flexible(
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            status = "casual";
                          });
                        },
                        child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: SizedBox(
                              height: 38,
                              child: Column(
                                children: [
                                  Flexible(
                                      fit: FlexFit.tight,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          gradient: status == "casual"? const LinearGradient(
                                            begin: Alignment.bottomLeft,
                                            end: Alignment.topRight,
                                            colors: [
                                              Color(0xFF2F3374),
                                              Color(0xFF682242)
                                            ],
                                          ) : const LinearGradient(colors: [Color(0xFFF3F3F3),Color(0xFFF3F3F3)]),
                                        ),
                                        child: Center(child: Text("Casual", style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: status == "casual"? Colors.white:Colors.black),)),
                                      )
                                  )
                                ],
                              ),
                            )
                        ),
                      )
                  ),
                  Flexible(
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            status = "sick";
                          });
                        },
                        child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: SizedBox(
                              height: 38,
                              child: Column(
                                children: [
                                  Flexible(
                                      fit: FlexFit.tight,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          gradient: status == "sick"? const LinearGradient(
                                            begin: Alignment.bottomLeft,
                                            end: Alignment.topRight,
                                            colors: [
                                              Color(0xFF2F3374),
                                              Color(0xFF682242)
                                            ],
                                          ) : const LinearGradient(colors: [Color(0xFFF3F3F3),Color(0xFFF3F3F3)]),
                                        ),
                                        child: Center(child: Text("Sick", style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: status == "sick"? Colors.white:Colors.black),)),
                                      )
                                  )
                                ],
                              ),
                            )
                        ),
                      )
                  )
                ],
              ),
            ),
            Container(
              height: 200,
            )
          ],
        )
    );
  }
}
