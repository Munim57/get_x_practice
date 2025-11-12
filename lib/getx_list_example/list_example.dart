import 'package:flutter/material.dart';

class ListExample extends StatefulWidget {
  const ListExample({super.key});

  @override
  State<ListExample> createState() => _ListExampleState();
}

class _ListExampleState extends State<ListExample> {
  List<String> furitslist = ['Mango', 'Bnana', 'Apple', 'Peach', 'Ornage'];
  List<dynamic> tempfruitlist = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(child: Text('List Example')),
        ),
        body: ListView.builder(
          itemCount: furitslist.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  if (tempfruitlist.contains(furitslist[index].toString())) {
                    tempfruitlist.remove(furitslist[index].toString());
                  } else {
                    tempfruitlist.add(furitslist[index].toString());
                  }
                  setState(() {});
                },
                title: Text(furitslist[index].toString()),
                trailing: Icon(
                  Icons.favorite,
                  color: tempfruitlist.contains(furitslist[index].toString())
                      ? Colors.red
                      : Colors.white,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
