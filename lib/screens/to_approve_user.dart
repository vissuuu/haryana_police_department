import 'package:flutter/material.dart';

class to_approve_user extends StatefulWidget {
  int index;
  to_approve_user(this.index);
  @override
  State<StatefulWidget> createState() => to_approve_userState(index);
}

class to_approve_userState extends State<to_approve_user> {

  int index;
  to_approve_userState(this.index);

  @override
  Widget build(BuildContext context) {
    var ID = ["1001","1002"]; //,"1003","1004","1005","1006","1007","1008","1009",
    var firstName = ['Manoj',"Sanjeev"];  //,"Harish","Mane","Ramanujan","Gopal","Harendar","Vinesh","Raghav"
    var lastName = ['Kumar',"Singh"]; //,"Backery","Milind","Govinda","Chand","Kumar","Mittal","Singh"
    var position = ["ACP","SI Intelligence"];
    var leaveType = ["Casual","Sick"]; //,"Casual","Casual","Sick","Casual","Casual","Casual","Sick"
    var leavePeriod = ["Half Day","1 day"]; //,"1 day","2 days","Half Day","1 day","1 day","1 day","2 days"
    var leaveReason = ["Personal","Personal"]; //,"Personal","Personal","Personal","Personal","Personal","Personal","Personal"
    var applyTime = ["7:45 p.m.","7:45 p.m."]; //,"7:45 p.m.","7:45 p.m.","7:45 p.m.","7:45 p.m.","7:45 p.m.","7:45 p.m.","7:45 p.m."
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  }, icon: const Icon(Icons.arrow_back_ios_new,
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
            height: 10,
          ),
          Flexible(
            child: Padding (
              padding: const EdgeInsets.only(left: 25,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:   [
                  Flexible(
                      fit: FlexFit.tight,
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: leaveType[index] == "Casual"? Colors.orange:Colors.red,
                              child: Text(firstName[index][0]+lastName[index][0],style: const TextStyle(fontSize: 20),),
                            ),
                            title: Text("${firstName[index]} ${lastName[index]}", style: const TextStyle(fontSize: 20),),
                            subtitle: Text(position[index]),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Type:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(leaveType[index], style: const TextStyle(fontSize: 16),),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text("Reason:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(leaveReason[index], style: const TextStyle(fontSize: 16),),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text("Leave period:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(leavePeriod[index], style: const TextStyle(fontSize: 16),),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const SizedBox(
                                      height: 50,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF2F3374),
                                        borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: const Center(child: Text("Approve", style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.bold),),),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF682242),
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: const Center(child: Text("Cancel", style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.bold),),),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFF3F3F3),
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: const Center(child: Text("Transfer", style: TextStyle(color: Colors.black, fontSize: 17,fontWeight: FontWeight.bold),),),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )

                        ],
                      )
                  ),
                ],
              ),
            ),
          )
      ]
    )
    );
  }
}
