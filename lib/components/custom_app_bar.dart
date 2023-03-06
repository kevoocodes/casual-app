import 'package:flutter/material.dart';

class CustomSilverAppBar extends StatelessWidget {
  const CustomSilverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return  SliverAppBar(
              floating: true,
              backgroundColor: Colors.white,
              leadingWidth: 200.0,
              leading: Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text('Casual', style: TextStyle(
                  fontSize: 28, 
                  color: const Color.fromARGB(255, 50, 158, 225), 
                  fontWeight: FontWeight.bold,
        
                  shadows: [
                    Shadow(
                        color: const Color.fromARGB(255, 248, 248, 248).withOpacity(0.3),
                        offset: const Offset(2, 1),
                        blurRadius: 15
                    )
                  ]
                  ),
                  ),
              ),
             
              actions: [
                IconButton(
                  iconSize: 20.0,
                  onPressed: () {}, 
                  icon: const Icon(Icons.notifications, color: Colors.black,))
              ],
        );
  }
}