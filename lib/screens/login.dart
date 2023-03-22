import 'package:flutter/material.dart';
import 'package:haryana_police_department/screens/change_password.dart';
import 'package:haryana_police_department/screens/home.dart';
import 'package:haryana_police_department/ui_helper/widgets/round_btn_1.dart';

// ignore: camel_case_types
class login extends StatelessWidget{
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    var name = TextEditingController();
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      // ),
      body:
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Login",
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
                                child: Text("Name",
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
                                  controller: name,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    hintText: "Name",
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
            ), // Name
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
                                    child: Text("Email",
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
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                          hintText: "Example@gmail.com",
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
            ), // Email
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
                                    child: Text("Password",
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
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                          hintText: "******",
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
            ), // Password
            const SizedBox(
              height: 30
            ),
            Padding (
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: SizedBox(
                height: 50,
                child: Column(
                  children:   [
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => change_password(name.text),));
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

          ],
        ),
      ),
    );
  }
}