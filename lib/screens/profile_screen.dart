import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
              ),
            child: Container(
              width: double.infinity,
              height: 200,
              child: Container(
                alignment: const Alignment(0.0,2.5),
                child: const CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/logo/user.png"
                  ),
                  radius: 60.0,
                ),
              ),
            ),
            ),

            const SizedBox(
              height: 60,
            ),
            const Text(
              "Kelvin Msindai"
              ,style: TextStyle(
                fontSize: 25.0,
                color:Colors.black,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400
            ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Dar es Salaam, Tanzania"
              ,style: TextStyle(
                fontSize: 15.0,
                color:Colors.grey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300
            ),
            ),
            const SizedBox(
              height: 10,
            ),
             Text(
              "Fullstack Developer"
              ,style: TextStyle(
                fontSize: 15.0,
                color:Colors.grey[400],
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300
            ),
            ),
            const SizedBox(
              height: 10,
            ),
            // const Card(
            //   margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),

            //   elevation: 2.0,
            //   child: Padding(
            //       padding: EdgeInsets.symmetric(vertical: 12,horizontal: 30),
            //       child: Text("Skill Sets",style: TextStyle(
            //           letterSpacing: 2.0,
            //           fontWeight: FontWeight.w300
            //       ),))
            // ),
            const SizedBox(
              height: 15,
            ),
             Text(
              "Front-End || Back-End"
              ,style: TextStyle(
                fontSize: 15.0,
                color:Colors.grey[400],
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300
            ),
            ),
            // Card(
            //   margin: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: [
            //         Expanded(
            //           child: Column(
            //             // ignore: prefer_const_literals_to_create_immutables
            //             children: [
            //               const Text("Project",
            //                 style: TextStyle(
            //                     color: Colors.blueAccent,
            //                     fontSize: 22.0,
            //                     fontWeight: FontWeight.w600
            //                 ),),
            //               const SizedBox(
            //                 height: 7,
            //               ),
            //               const Text("15",
            //                 style: TextStyle(
            //                     color: Colors.black,
            //                     fontSize: 22.0,
            //                     fontWeight: FontWeight.w300
            //                 ),)
            //             ],
            //           ),
            //         ),
            //         Expanded(
            //           child:
            //           Column(
            //             children: const [
            //               Text("Followers",
            //                 style: TextStyle(
            //                     color: Colors.blueAccent,
            //                     fontSize: 22.0,
            //                     fontWeight: FontWeight.w600
            //                 ),),
            //               SizedBox(
            //                 height: 7,
            //               ),
            //               Text("2000",
            //                 style: TextStyle(
            //                     color: Colors.black,
            //                     fontSize: 22.0,
            //                     fontWeight: FontWeight.w300
            //                 ),)
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 50,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     ElevatedButton(
            //        onPressed: (){

            //       },
            //       style: ElevatedButton.styleFrom(
            //           shape:  RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(80.0),
            //       ),
            //       ),
            //       child: Ink(
            //         decoration: BoxDecoration(
            //           gradient: const LinearGradient(
            //               begin: Alignment.centerLeft,
            //               end: Alignment.centerRight,
            //               colors: [Colors.pink,Colors.redAccent]
            //           ),
            //           borderRadius: BorderRadius.circular(30.0),

            //         ),
            //         child: Container(
            //           constraints: const BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
            //           alignment: Alignment.center,
            //           child: const Text(
            //             "Contact me",
            //             style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 12.0,
            //                 letterSpacing: 2.0,
            //                 fontWeight: FontWeight.w300
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //     ElevatedButton(
            //       onPressed: (){

            //       },
            //       style: ElevatedButton.styleFrom(
            //           shape:  RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(80.0),
            //       ),
            //       ),
               
            //       child: Ink(
            //         decoration: BoxDecoration(
            //           gradient: const LinearGradient(
            //               begin: Alignment.centerLeft,
            //               end: Alignment.centerRight,
            //               colors: [Colors.pink,Colors.redAccent]
            //           ),
            //           borderRadius: BorderRadius.circular(80.0),

            //         ),
            //         child: Container(
            //           constraints: const BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
            //           alignment: Alignment.center,
            //           child: const Text(
            //             "Portfolio",
            //             style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 12.0,
            //                 letterSpacing: 2.0,
            //                 fontWeight: FontWeight.w300
            //             ),
            //           ),
            //         ),
            //       ),
            //     )
            //   ],
            // )
          ],
        ),
      )
    );
  }
}