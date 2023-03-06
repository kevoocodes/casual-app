import 'package:casualapp/screens/splash_screen_two.dart';
import 'package:flutter/material.dart';

class SplashScreenOne extends StatefulWidget {
  static String routeName = 'SplashScreenOne';
  const SplashScreenOne({Key? key}) : super(key: key);

  @override
  State<SplashScreenOne> createState() => _SplashScreenOneState();
}

class _SplashScreenOneState extends State<SplashScreenOne> {
  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage(
              'assets/images/one.jpg',
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
                      Text('All',style: TextStyle(color: Colors.white54, fontSize: 60),),
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
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const SplashScreenTwo(),));
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
