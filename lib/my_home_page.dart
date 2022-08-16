
import 'package:flutter/material.dart';
import 'package:to_do_list/new_list_item_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("TechMalawi To-Do List"),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return InkWell(
                child: Container(
                    margin:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Title of list item",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text("Description of list item"),
                      ],
                    )),
                onTap: (){
                  //Navigate to second screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NewListItem()),
                  );
                },
              );
            }));
  }
}