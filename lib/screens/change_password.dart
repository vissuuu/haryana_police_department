import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haryana_police_department/screens/home.dart';
import 'package:haryana_police_department/screens/login.dart';

import '../ui_helper/widgets/round_btn_1.dart';

class change_password extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  String name;

  change_password(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Change Password",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
              child: SizedBox(
                height: 100,
                child: Column(
                  children: [
                    Flexible(
                      flex: 8,
                      fit: FlexFit.tight,
                      child: Container(
                        // color: Colors.grey,
                          child: (
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("Old Password",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17
                                      ),),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  SizedBox(
                                    height: 50,
                                    child: TextField(
                                      obscureText: true,
                                      obscuringCharacter: "*",
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                          hintText: "**********",
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(16),
                                              borderSide: const BorderSide(
                                                color: Color(0xFFD9D9D9),
                                                // width: 2
                                              )
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(16),
                                              borderSide: const BorderSide(
                                                  color: Colors.black,
                                                  width: 2
                                              )
                                          )
                                      ),
                                    ),
                                  )
                                ],
                              )
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: SizedBox(
                height: 100,
                child: Column(
                  children: [
                    Flexible(
                      flex: 8,
                      fit: FlexFit.tight,
                      child: Container(
                        // color: Colors.grey,
                          child: (
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("New Password",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17
                                      ),),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  SizedBox(
                                    height: 50,
                                    child: TextField(
                                      obscureText: true,
                                      obscuringCharacter: "*",
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                          hintText: "**********",
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(16),
                                              borderSide: const BorderSide(
                                                color: Color(0xFFD9D9D9),
                                                // width: 2
                                              )
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(16),
                                              borderSide: const BorderSide(
                                                  color: Colors.black,
                                                  width: 2
                                              )
                                          )
                                      ),
                                    ),
                                  )
                                ],
                              )
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: SizedBox(
                height: 100,
                child: Column(
                  children: [
                    Flexible(
                      flex: 8,
                      fit: FlexFit.tight,
                      child: Container(
                        // color: Colors.grey,
                          child: (
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("Re-enter Password",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17
                                      ),),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  SizedBox(
                                    height: 50,
                                    child: TextField(
                                      obscureText: true,
                                      obscuringCharacter: "*",
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          hintText: "**********",
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(16),
                                              borderSide: const BorderSide(
                                                color: Color(0xFFD9D9D9),
                                                // width: 2
                                              )
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(16),
                                              borderSide: const BorderSide(
                                                  color: Colors.black,
                                                  width: 2
                                              )
                                          )
                                      ),
                                    ),
                                  )
                                ],
                              )
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
                height: 30
            ),
            Padding (
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: SizedBox(
                height: 50,
                child: Column(
                  children:  [
                    Flexible(
                        flex: 8,
                        fit: FlexFit.tight,
                        child:
                        // Container(
                        //   color: Colors.red,
                        // )
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => home(name),));
                          },
                          child: const rdn_button(
                            BtnName: "Save",
                            // link: "Navigator.push(context, MaterialPageRoute(builder: (context) => login(),))"
                          ),
                        )
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  }
