import 'package:flutter/material.dart';
import 'package:haryana_police_department/screens/to_approve.dart';


// ignore: camel_case_types
class your_leaves extends StatefulWidget {
  const your_leaves({super.key});

  @override
  State<your_leaves> createState() => _your_leavesState();
}

// ignore: camel_case_types
class _your_leavesState extends State<your_leaves> {
  var status = "all";

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Column(
      children: [
        const SizedBox(
          height: 50,
        ), // Top
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            IconButton(
                onPressed: (){
                  Navigator.pop(context);
                }, icon: const Icon(Icons.home_outlined,
              color: Colors.black,)),
            Expanded(child: Container(height: 5,)),
            const Icon(Icons.notifications_none_rounded),
            const SizedBox(
              width: 10,
            ),
            Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color(0xFF2F3374),
                          Color(0xFF682242)
                        ]
                    ),
                    borderRadius: BorderRadius.circular(5)
                ),
                child: const Icon(Icons.add_outlined, size: 30, color: Colors.white,)
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ), // Top icons
        const SizedBox(
          height: 20,
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Text("Leaves", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          ),
        ), // Text: Leaves
        const SizedBox(
          height: 10,
        ),
        Flexible(
          child: Padding (
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: SizedBox(
              height: 40,
              child: Column(
                children:   [
                  Flexible(
                      fit: FlexFit.tight,
                      child:
                      Container(
                        decoration: BoxDecoration(
                          // color: Colors.black,
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Row(
                          children: [
                            Flexible(
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
                                                  gradient: const LinearGradient(
                                                    begin: Alignment.bottomLeft,
                                                    end: Alignment.topRight,
                                                    colors: [
                                                      Color(0xFF2F3374),
                                                      Color(0xFF682242)
                                                    ],
                                                  ),
                                                ),
                                                child: const Center(child: Text("Yours", style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: Colors.white),)),
                                              )
                                          )
                                        ],
                                      ),
                                    )
                                )
                            ),
                            Flexible(
                                child: InkWell(
                                  onTap: (){
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => to_approve(),));
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
                                                  ),
                                                  child: const Center(child: Text("To Approve", style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)),
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
                      )
                  ),
                ],
              ),
            ),
          ),
        ), // Yours-To approve navigation
        const SizedBox(
          height: 15,
        ),
        Flexible(
          child: Padding (
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: SizedBox(
              height: 40,
              child: Column(
                children:   [
                  Flexible(
                      fit: FlexFit.tight,
                      child:
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
                      )
                  ),
                ],
              ),
            ),
          ),
        ), // All-Casual-Sick navigation
        const SizedBox(
          height: 20,
        ),

      ],
    ),
  );
  }
}
