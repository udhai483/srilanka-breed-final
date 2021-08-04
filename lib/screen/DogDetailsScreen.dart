import 'package:flutter/material.dart';

import 'package:srilankan_breeds/model/dogmodel.dart';

class DogDetailsScreen extends StatelessWidget {
  static String routeName = 'detailsScreen';
  const DogDetailsScreen();

  @override
  Widget build(BuildContext context) {
    final DogModel currentDog =
        ModalRoute.of(context)!.settings.arguments as DogModel;
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 250.0,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text(currentDog.breedName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                )),
            background: Image.network(
              currentDog.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 75,
                      color: Colors.black12,
                    ),
                  ),
              childCount: 10),
        )
      ]),
    );
  }
}
