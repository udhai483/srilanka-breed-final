import 'package:flutter/material.dart';

class BuildPetCategory extends StatelessWidget {
  const BuildPetCategory({this.color, this.category, this.url, this.name});

  final color;
  final category;
  final url;
  final name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * .3,
        width: MediaQuery.of(context).size.width * .4,
        child: GridTile(
          child: Image.network(url),
          footer: Container(
            height: 30,
            child: GridTileBar(
              backgroundColor: Colors.grey.withOpacity(0.5),
              title: Text(name),
            ),
          ),
        ),
      ),
    );
  }
}
