import 'package:flutter/material.dart';
import 'package:haryana_police_department/screens/your_leaves.dart';


class to_approve extends StatelessWidget {
  const to_approve({super.key});
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
                child: const Icon(Icons.add_outlined, color: Colors.white, size: 30),
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
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => your_leaves(),));
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
                                                    child: const Center(child: Text("Yours", style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)),
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
                                                      gradient: const LinearGradient(
                                                        begin: Alignment.bottomLeft,
                                                        end: Alignment.topRight,
                                                        colors: [
                                                          Color(0xFF2F3374),
                                                          Color(0xFF682242)
                                                        ],
                                                      ),
                                                    ),
                                                    child: const Center(child: Text("To Approve", style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: Colors.white),)),
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

        ],
      ),
    );
  }
}
