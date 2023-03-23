import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../ui_helper/widgets/round_btn_1.dart';

// ignore: camel_case_types, must_be_immutable
class home extends StatelessWidget{
  // ignore: prefer_typing_uninitialized_variables
  var name;

  home(this.name, {super.key});

  @override
  Widget build(BuildContext context) {


    double leaves = 10;
    double total = 22;
    double leaveBalance = total - leaves;
    double leavesPer = (leaveBalance/total);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1C28F0),
              Color(0xFF552752)
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          )
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 45,
            ),
            ListTile(
              leading: const Icon(Icons.supervised_user_circle,
                size: 60,
              color: Colors.white,),
              title: Text(name, style: const TextStyle(color: Colors.white),),
              subtitle: Text("ACP", style: TextStyle(color: Colors.white),),
              trailing: const Icon(Icons.notifications_active_outlined,
              size: 25,
              color: Colors.white,),
            ),
            const SizedBox(
              height: 15,
            ),
            Flexible(
              flex: 10,
              fit: FlexFit.tight,
              child: Container(
                decoration:  const BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Colors.black38,
                    blurRadius: 4,
                    spreadRadius: 4
                  )
                  ],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(34), topRight: Radius.circular(34)),
                    color: Colors.white
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("Leave Balance", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                      ), // Leave Balance Text
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 250,
                          decoration: BoxDecoration(
                            // color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: const Color(0xFFDFDFDF))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Text(total.toString() , style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      const Text("Total Leaves", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),)
                                    ],
                                  ), // Total Leaves
                                  CircularPercentIndicator(
                                      radius: 45,
                                    lineWidth: 3,
                                    percent: leavesPer,
                                    linearGradient: const LinearGradient(
                                      colors: [
                                        Color(0xFF2F3374),
                                        Color(0xFF682242)
                                      ],
                                      end: Alignment.topRight,
                                      begin: Alignment.bottomLeft
                                    ),
                                    circularStrokeCap: CircularStrokeCap.round,
                                    center:
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(leaveBalance.toString() , style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                        const Text("Leave Balance", style: TextStyle(fontSize: 10),)
                                      ],
                                    ),
                                  ), // Leaves percentage
                                  Column(
                                    children: [
                                      Text(leaves.toString(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      const Text("Used Leaves", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),)
                                    ],
                                  ), // Used Leaves
                                ],
                              ), // Upper row with circle
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text("05", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                  Container(
                                    color: const Color(0xFFDFDFDF),
                                    width: 2,
                                    height: 24,
                                  ),
                                  const Text("01", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                  Container(
                                    color: const Color(0xFFDFDFDF),
                                    width: 2,
                                    height: 24,
                                  ),
                                  const Text("06", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                  Container(
                                    color: const Color(0xFFDFDFDF),
                                    width: 2,
                                    height: 24,
                                  ),
                                  const Text("12", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                  Container(
                                    color: const Color(0xFFDFDFDF),
                                    width: 2,
                                    height: 24,
                                  ),
                                  const Text("05", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                ],
                              ), // Middle row
                              const SizedBox(
                                height: 9,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Flexible(
                                    flex: 2,
                                    fit: FlexFit.tight,
                                    child: Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF2F3374),
                                        borderRadius: BorderRadius.circular(11.5)
                                      ),
                                      child:
                                      const Center(child: Text("Casual", style: TextStyle(color: Colors.white),)),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Flexible(
                                    flex: 2,
                                    fit: FlexFit.tight,
                                    child: Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF2F3374),
                                          borderRadius: BorderRadius.circular(11.5)
                                      ),
                                      child:
                                      const Center(child: Text("AL", style: TextStyle(color: Colors.white),)),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Flexible(
                                    flex: 2,
                                    fit: FlexFit.tight,
                                    child: Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF2F3374),
                                          borderRadius: BorderRadius.circular(11.5)
                                      ),
                                      child:
                                      const Center(child: Text("EL", style: TextStyle(color: Colors.white),)),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Flexible(
                                    flex: 2,
                                    fit: FlexFit.tight,
                                    child: Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF2F3374),
                                          borderRadius: BorderRadius.circular(11.5)
                                      ),
                                      child:
                                      const Center(child: Text("PL", style: TextStyle(color: Colors.white),)),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Flexible(
                                    flex: 2,
                                    fit: FlexFit.tight,
                                    child: Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF2F3374),
                                          borderRadius: BorderRadius.circular(11.5)
                                      ),
                                      child:
                                      const Center(child: Text("Sick", style: TextStyle(color: Colors.white),)),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                ],
                              ), // Lower Row
                            ],
                          ),
                        ),
                      ), // Leave Balance Box
                      Row(
                        children: [
                          Flexible(
                            child: Padding (
                              padding: const EdgeInsets.only(left: 25,right: 25),
                              child: SizedBox(
                                height: 50,
                                child: Column(
                                  children:   [
                                    Flexible(
                                        flex: 4,
                                        fit: FlexFit.tight,
                                        child:
                                        // Container(
                                        //   color: Colors.red,
                                        // )
                                        InkWell(
                                          onTap: (){

                                          },
                                          child: const rdn_button(
                                            BtnName: "Continue",
                                            // link: 'Navigator.push(context, MaterialPageRoute(builder: (context) => change_password(),))'
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding (
                              padding: const EdgeInsets.only(left: 25,right: 25),
                              child: SizedBox(
                                height: 50,
                                child: Column(
                                  children:   [
                                    Flexible(
                                        flex: 4,
                                        fit: FlexFit.tight,
                                        child:
                                        // Container(
                                        //   color: Colors.red,
                                        // )
                                        InkWell(
                                          onTap: (){

                                          },
                                          child: const rdn_button(
                                            BtnName: "Continue",
                                            // link: 'Navigator.push(context, MaterialPageRoute(builder: (context) => change_password(),))'
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}