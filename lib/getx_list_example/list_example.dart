import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practice/getx_list_example/favorite_controller.dart';

class ListExample extends StatefulWidget {
  const ListExample({super.key});

  @override
  State<ListExample> createState() => _ListExampleState();
}

class _ListExampleState extends State<ListExample> {
  FavoriteController favoriteController = Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('rebuild');
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(child: Text('List Example')),
        ),
        body: ListView.builder(
          itemCount: favoriteController.furitslist.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  if (favoriteController.tempfruitlist.contains(
                    favoriteController.furitslist[index].toString(),
                  )) {
                    favoriteController.removeFromFavourite(
                      favoriteController.furitslist[index].toString(),
                    );
                  } else {
                    favoriteController.addToFavourite(
                      favoriteController.furitslist[index].toString(),
                    );
                  }
                },
                title: Text(favoriteController.furitslist[index].toString()),
                trailing: Obx(
                  () => Icon(
                    Icons.favorite,
                    color:
                        favoriteController.tempfruitlist.contains(
                          favoriteController.furitslist[index].toString(),
                        )
                        ? Colors.red
                        : Colors.white,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
