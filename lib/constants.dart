import 'package:srilankan_breeds/model/dogmodel.dart';

const String appName = "Sri lankan Breeds";
const String slogan = "Dog App";
const String bgimage = 'assets/images/jamie-street-8rmYDezMIE4-unsplash.jpg';
const String logingString = "LOGIN";
const String forgetText = "Forgot password ?";
const List<String> dropDownValues = [
  'Dehiwala-Mount Lavinia',
  'Moratuwa',
  'Jaffna',
  'Negombo	',
  'Pita Kotte',
  'Sri Jayewardenepura Kotte',
  'Kandy',
  'Trincomalee',
  'Kalmunai',
  'Galle',
  'Point Pedro',
  'Batticaloa',
  'Katunayaka',
  'Valvedditturai',
  'Matara',
  'Battaramulla South',
  'Dambulla',
  'Maharagama	',
  'Kotikawatta',
  'Anuradhapura',
  'Vavuniya '
];
List<DogModel> dogList = [
  DogModel(
    id: 'id',
    breedName: 'breedName',
    imageUrl:
        'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2020/07/09151754/Golden-Retriever-puppy-standing-outdoors-500x486.jpg',
    description: 'description',
    imageUrlList: ['imageUrlList'],
    origin: 'origin',
    lifeSpam: 3,
    temperament: 'temperament',
    size: 'size',
    weight: 30,
    femaleHeight: 'femaleHeight',
    femaleWeight: 'femaleWeight',
    maleHeight: 'maleHeight',
    maleWeight: 'maleWeight',
    otherName: ['otherName'],
  ),
];
