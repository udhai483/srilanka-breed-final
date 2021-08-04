import 'package:flutter/material.dart';
import 'package:srilankan_breeds/model/dogmodel.dart';
import 'package:srilankan_breeds/screen/DogDetailsScreen.dart';

class PopularPet extends StatelessWidget {
  const PopularPet(this.popularpeList);

  final List<DogModel> popularpeList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: popularpeList.length + 10,
      itemBuilder: (context, index) {
        var currentDog = popularpeList[0];
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, DogDetailsScreen.routeName,
                arguments: popularpeList[index]);
          },
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * .3,
            width: MediaQuery.of(context).size.width * .4,
            child: GridTile(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  currentDog.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              footer: Container(
                height: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  child: GridTileBar(
                    backgroundColor: Colors.grey.withOpacity(0.5),
                    title: Text(currentDog.breedName),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
