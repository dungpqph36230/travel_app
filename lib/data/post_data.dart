import 'package:travel_app/model/post_model.dart';

final _post0 = Post(
  img: 'images/postOne.jpg',
  title: 'Niladri Reservoir',
  map: 'Tekergat, Sunamgnj',
  star: '4.7',
);
final _post1 = Post(
  img: 'images/postTwo.jpg',
  title: 'Darma Reservoir',
  map: 'Darma, Kuningan',
  star: '5',
);
final _post2 = Post(
  img: 'images/postThree.jpg',
  title: 'Rangauti Resort',
  map: 'Zeero Point, Sylhet',
  star: '4.8',
);

final posts = [_post0, _post1, _post2];

final _name0 = NameTitleClass(nameTitle: "Best Destination");
final _name1 = NameTitleClass(nameTitle: "Popular Places");
final _name2 = NameTitleClass(nameTitle: "Popular Package");
final _name3 = NameTitleClass(nameTitle: "Favorite Places");

final nameTitle = [_name0,_name1,_name2,_name3];

final _place0 = Places(
  img: 'images/postSeven.jpg',
  title: 'Niladri Reservoir',
  map: 'Tekergat, Sunamgnj',
  star: '4.7',
  person: '\$459/',
);
final _place1 = Places(
  img: 'images/postTen.jpg',
  title: 'Casa Las Tirtugas',
  map: 'Av Damero, Mexico',
  star: '4.8',
  person: '\$559/',
);
final _place2 = Places(
  img: 'images/postNine.jpg',
  title: 'Aonang Villa Resort',
  map: 'Bastola, Islampur',
  star: '4.3',
  person: '\$659/',
);
final _place3 = Places(
  img: 'images/postFive.jpg',
  title: 'Rangauti Resort',
  map: 'Zeero Point, Sylhet',
  star: '4.5',
  person: '\$859/',
);

final places = [_place0,_place1,_place2,_place3];

final _package0 = Packages(
  img: 'images/postOneOne.jpg',
  title: 'Santorini Islnd',
  date: '16 July-28 July',
  star: '4.8',
  person: '\$820',
  joinPerson: '24',
);
final _package1 = Packages(
  img: 'images/postOneTwo.jpg',
  title: 'Bukita Rayandro',
  date: '20 Sep-29 Sep',
  star: '4.3',
  person: '\$720',
  joinPerson: '25',
);
final _package2 = Packages(
  img: 'images/postOneThree.jpg',
  title: 'Cluster Omega',
  date: '14 Nov-22Nov',
  star: '4.9',
  person: '\$942',
  joinPerson: '26',
);
final _package3 = Packages(
  img: 'images/postOneFor.jpg',
  title: 'Shajek Bandorban',
  date: '12 Dec-18 Dec',
  star: '4.5',
  person: '\$860',
  joinPerson: '27',
);
 final packages = [
  _package0,_package1,_package2,_package3
 ];

 final _favorite0 = FavoritePlaces(
  img: 'images/postSeven.jpg',
  title: 'Niladri Reservoir',
  map: 'Tekergat, Sunamgnj',
);
final _favorite1 = FavoritePlaces(
  img: 'images/postTen.jpg',
  title: 'Casa Las Tirtugas',
  map: 'Av Damero, Mexico',
);
final _favorite2 = FavoritePlaces(
  img: 'images/postNine.jpg',
  title: 'Aonang Villa Resort',
  map: 'Bastola, Islampur',
);
final _favorite3 = FavoritePlaces(
  img: 'images/postFive.jpg',
  title: 'Rangauti Resort',
  map: 'Zeero Point, Sylhet',
);
final _favorite4 = FavoritePlaces(
  img: 'images/postOneOne.jpg',
  title: 'Vellima, Island',
  map: 'Zeero Point, Sylhet',
);
final _favorite5 = FavoritePlaces(
  img: 'images/postEight.jpg',
  title: 'Shakartu, Pakistan',
  map: 'Zeero Point, Sylhet',
);

final favorites = [_favorite0,_favorite1,_favorite2,_favorite3,_favorite4,_favorite5];

final _mySchedule1 = MySchedules(
  img: 'images/postThree.jpg',
  title: 'Niladri Reservoir',
  map: 'Tekergat, Sunamgnj',
  date: '26 January 2022',
);
final _mySchedule2 = MySchedules(
  img: 'images/postTen.jpg',
  title: 'High Rech Park',
  map: 'Zeero Point, Sylhet',
  date: '26 January 2022',
);
final _mySchedule3 = MySchedules(
  img: 'images/postOneOne.jpg',
  title: 'Darma Reservoir',
  map: 'Darma, Kuningan',
  date: '26 January 2022',
);

final mySchedules = [_mySchedule1,_mySchedule2,_mySchedule3];

final _searchPlace1 = SearchPlace(
  img: 'images/postFor.jpg',
  title: 'Niladri Reservoir',
  map: 'Tekergat, Sunamgnj',
  person: '\$459/',
);
final _searchPlace2 = SearchPlace(
  img: 'images/postTen.jpg',
  title: 'Casa Las Tirtugas',
  map: 'Av Damero, Mexico',
  person: '\$559/',
);
final _searchPlace3 = SearchPlace(
  img: 'images/postNine.jpg',
  title: 'Aonang Villa Resort',
  map: 'Bastola, Islampur',
  person: '\$659/',
);
final _searchPlace4 = SearchPlace(
  img: 'images/postFive.jpg',
  title: 'Rangauti Resort',
  map: 'Zeero Point, Sylhet',
  person: '\$859/',
);
final searchPlaces = [_searchPlace1,_searchPlace2,_searchPlace3,_searchPlace4];