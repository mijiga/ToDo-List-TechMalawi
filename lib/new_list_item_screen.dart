import 'package:flutter/material.dart';

class NewListItem extends StatefulWidget {
  const NewListItem({Key? key}) : super(key: key);

  @override
  State<NewListItem> createState() => _NewListItemState();
}

class _NewListItemState extends State<NewListItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Create New Item"),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: Column(children: [
            const TextField(
              decoration: InputDecoration(
                  labelText: "New Item Title"),
            ),
            const TextField(
              decoration: InputDecoration(
                  labelText: "New Item Description (Optional)"),
            ),
            ElevatedButton(
              child: const Text("Save New Note"),
                onPressed: (){
              //Code for saving the new note here
            }),

          ],),
        ));
  }
}
