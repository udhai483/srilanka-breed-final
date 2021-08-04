import 'package:flutter/material.dart';

class PetCenter extends StatelessWidget {
  const PetCenter({required this.name, required this.url, required this.id});

  final String name;
  final String url;
  final String id;

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
