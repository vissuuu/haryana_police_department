import 'package:flutter/material.dart';
import 'package:haryana_police_department/screens/to_approve_user.dart';

class to_approve extends StatefulWidget {  @override
State<StatefulWidget> createState() => to_approveState();
}

class to_approveState extends State<to_approve> {
  @override
  Widget build(BuildContext context) {
    var ID = ["1001","1002"]; //,"1003","1004","1005","1006","1007","1008","1009",
    var firstName = ['Manoj',"Sanjeev"];  //,"Harish","Mane","Ramanujan","Gopal","Harendar","Vinesh","Raghav"
    var lastName = ['Kumar',"Singh"]; //,"Backery","Milind","Govinda","Chand","Kumar","Mittal","Singh"
    var position = ["ACP","SI Intelligence"];
    var leaveType = ["Casual","Sick"]; //,"Casual","Casual","Sick","Casual","Casual","Casual","Sick"
    var leavePeriod = ["Half Day"]; //,"1 day","1 day","2 days","Half Day","1 day","1 day","1 day","2 days"
    var leaveReason = ["Personal","Personal"]; //,"Personal","Personal","Personal","Personal","Personal","Personal","Personal"
    var applyTime = ["7:45 p.m.","7:45 p.m."]; //,"7:45 p.m.","7:45 p.m.","7:45 p.m.","7:45 p.m.","7:45 p.m.","7:45 p.m.","7:45 p.m."

    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: (){
                setState(() {
                });
              },
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.black,
                      color: const Color(0xFFF3F3F3),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  height: 35,
                  width: 80,
                  child: const Center(child: Text("Refresh", style: TextStyle(fontWeight: FontWeight.bold),)),
                ),
              ),
            ), // Refresh button
            ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: ((context, index){
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: leaveType[index] == "Casual"? Colors.orange:Colors.red,
                    child: Text(firstName[index][0]+lastName[index][0],style: const TextStyle(fontSize: 20),),
                  ),
                  title: Text("${firstName[index]} ${lastName[index]}", style: const TextStyle(fontSize: 20),),
                  subtitle: Text(position[index]),
                  trailing: IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => to_approve_user(index),));
                    },
                    icon: const Icon(Icons.open_in_new_outlined),
                    color: Colors.black,
                  )
                );
              }),
              itemCount: ID.length,
              separatorBuilder: (context, index) {
                return const Divider(height: 8, thickness: 1,color: Colors.black,);
              },

            )
          ],
        ),
      )
    );
  }
}
