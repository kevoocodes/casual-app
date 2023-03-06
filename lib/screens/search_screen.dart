import 'package:casualapp/models/fashion_model.dart';
import 'package:casualapp/widgets/search_field.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  static List<FashionModel> main_fashion_model = [
    FashionModel("The Fashion of today", "This is the best of the fashion",
        "assets/images/fou.jpg"),
    FashionModel("The Fashion of today", "This is the best of the fashion",
        "assets/images/one.jpg"),
    FashionModel("The Fashion of today", "This is the best of the fashion",
        "assets/images/fou.jpg"),
    FashionModel("The Fashion of today", "This is the best of the fashion",
        "assets/images/fou.jpg"),
    FashionModel("The Fashion of today", "This is the best of the fashion",
        "assets/images/fou.jpg"),
    FashionModel("The Fashion of today", "This is the best of the fashion",
        "assets/images/fou.jpg"),
    FashionModel("The Fashion of today", "This is the best of the fashion",
        "assets/images/fou.jpg"),
    FashionModel("The Fashion of today", "This is the best of the fashion",
        "assets/images/fou.jpg"),
    FashionModel("The Fashion of today", "This is the best of the fashion",
        "assets/images/fou.jpg"),
    FashionModel("The Fashion of today", "This is the best of the fashion",
        "assets/images/one.jpg"),
    FashionModel("The Fashion of today", "This is the best of the fashion",
        "assets/images/three.jpg"),
    FashionModel("The Fashion of today", "This is the best of the fashion",
        "assets/images/two.jpg"),
  ];

  //create the list that we are going to diplay
  List<FashionModel> display_list = List.from(main_fashion_model);

  void updateList(String value) {
    //this is function will filter our list
    //we will back to this list after a while
    //Now let's write our search function

    setState(() {
      display_list = main_fashion_model
          .where((element) =>
              element.fashionTitle!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Search Casual",
                style: TextStyle(
                    color: Color.fromARGB(255, 50, 158, 225),
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                onChanged: (value) => updateList(value),
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 225, 225, 225),
                    hintText: "Search...",
                    prefixIcon: const Icon(Icons.search),
                    prefixIconColor: Colors.black,
                    suffixIcon: const Icon(Icons.filter_alt_outlined),
                    suffixIconColor: Colors.black),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                //now lets create the text if we dont get a vibes

                child: display_list.length == 0
                    ? const Center(
                        child: Text(
                          "No Result Found",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    : ListView.builder(
                        itemCount: display_list.length,
                        itemBuilder: (context, index) => ListTile(
                          contentPadding: const EdgeInsets.all(8.0),
                          title: Text(
                            display_list[index].fashionTitle!,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            display_list[index].fashionDescription!,
                          ),
                          leading:
                              Image.asset(display_list[index].fashionImage!),
                        ),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
