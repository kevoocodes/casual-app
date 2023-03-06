import 'package:casualapp/components/bottom_navigation.dart';
import 'package:flutter/material.dart';

class SplashScreenTwo extends StatefulWidget {
    static String routeName = 'SplashScreenTwo';
  const SplashScreenTwo({Key? key}) : super(key: key);

  @override
  State<SplashScreenTwo> createState() => _SplashScreenTwoState();
}

class _SplashScreenTwoState extends State<SplashScreenTwo> {
  @override
   Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage(
              'assets/images/two.jpg',
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.9), BlendMode.dstATop),
            opacity: 0.3,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                 Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: const [
                      Text('New',style: TextStyle(color: Colors.white54, fontSize: 60),),
                      Text(
                        'Fashion',
                        style: TextStyle(color: Colors.white54, fontSize: 60),
                      ),


                    ],
                  ),
 
                ),

                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton.icon(
                    
                  style: ElevatedButton.styleFrom(
                   shape: RoundedRectangleBorder( //to set border radius to button
                   borderRadius: BorderRadius.circular(30),
                ),
                  backgroundColor: Colors.white,// foreground
                  ),
                  onPressed: () {
                                                     Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavigation(),));
                   },
                  label: const Text('NEXT', style: TextStyle(color: Colors.black),),
                  icon:  const Icon(Icons.navigate_next_rounded, color: Colors.black
                  ,),
                              ),
                )
              ],
            ),

        
            
          ),
        ),
      );
}