import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:srilankan_breeds/widgets/petcenter.dart';
import 'package:srilankan_breeds/widgets/popularpet.dart';
import 'constants.dart';
import 'widgets/BuildPetCategory.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  String value = dropDownValues.first;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.only(top: 50),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Search breed?",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size(30, 20),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.05,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: DropdownButton<String>(
                  value: value,
                  icon: Icon(
                    Icons.arrow_drop_down,
                  ),
                  iconSize: 42,
                  underline: SizedBox(),
                  onChanged: (newValue) {
                    setState(() {
                      value = newValue!;
                    });
                  },
                  items: dropDownValues
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList()),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        drawer: Drawer(),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          hintText: 'Searching dog?',
                          hintStyle: TextStyle(fontSize: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.grey[100],
                          contentPadding: EdgeInsets.only(
                            right: 30,
                          ),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(right: 16.0, left: 24.0),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.sort))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, top: 10, bottom: 8),
                child: Text(
                  "Category",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.16,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    BuildPetCategory(
                      category: 'Category 1',
                      color: Colors.orange,
                      name: 'Breeders',
                      url:
                          'https://cdn.britannica.com/60/8160-050-08CCEABC/German-shepherd.jpg',
                    ),
                    BuildPetCategory(
                      category: 'Category 2',
                      color: Colors.orange,
                      name: 'Trainee',
                      url:
                          'https://cdn.britannica.com/60/8160-050-08CCEABC/German-shepherd.jpg',
                    ),
                    BuildPetCategory(
                      category: 'Category 3',
                      color: Colors.orange,
                      name: 'Kennels',
                      url:
                          'https://cdn.britannica.com/60/8160-050-08CCEABC/German-shepherd.jpg',
                    ),
                    BuildPetCategory(
                      category: 'Category 1',
                      color: Colors.orange,
                      name: 'KASL',
                      url: 'http://www.kasl.lk/breeders',
                    ),
                    BuildPetCategory(
                      category: 'Category 1',
                      color: Colors.orange,
                      name: 'CKC',
                      url:
                          'http://www.ceylonkennelclub.com/index.php?view=article&id=68%3Adog..g',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16,
                ),
                child: Text(
                  "Kennels",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.10,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    PetCenter(
                        name: "JROTT kennels",
                        url:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ-EGBJFazK-oPx-m8eIBDhZuslRMla1nc8w&usqp=CAU",
                        id: "1"),
                    PetCenter(
                        name: "Ragama kennels",
                        url:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ-EGBJFazK-oPx-m8eIBDhZuslRMla1nc8w&usqp=CAU",
                        id: "2"),
                    PetCenter(
                        name: "Best kennels Maharagama",
                        url:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ-EGBJFazK-oPx-m8eIBDhZuslRMla1nc8w&usqp=CAU",
                        id: "3"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16,
                ),
                child: Text(
                  "Popular Breeds",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              Container(
                child: PopularPet(dogList),
              )
            ],
          ),
        ),
      ),
    );
  }
}
