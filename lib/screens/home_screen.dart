import 'package:casualapp/widgets/search_field.dart';
import 'package:flutter/material.dart';

import '../components/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            const CustomSilverAppBar(),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 0),
               child: Column(
                 children: const [
                   SearchField(),

                 ],
               ),
              ),
              
            ),

             SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left:20, right: 20,bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: TextButton(
                        onPressed: () {}, 
                        child: const Text('Men', style: TextStyle(fontSize: 20, color: Colors.black),)),
                    ),


                    Container(
                      child: TextButton(
                        onPressed: () {}, 
                        child: const Text('Women', style: TextStyle(fontSize: 20, color: Colors.black)),)),
                  

                    Container(
                      child: TextButton(
                        onPressed: () {},
                         child: const Text('Category',style: TextStyle(fontSize: 20, color: Colors.black),)),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
    );
  }
}

