import 'Places.dart';

class Info {
  int _totalPlaces = _places.length;

  static List<Places> _places = [
    Places(
        'Iguazú Falls, Argentina',
        "Iguazú Falls are waterfalls of the Iguazu River on the border of the Argentine province of Misiones and the Brazilian state of Paraná. Together, they make up the largest waterfall in the world. The falls divide the river into the upper and lower Iguazu. The Iguazu River rises near the heart of the city of Curitiba. For most of its course, the river flows through Brazil; however, most of the falls are on the Argentine side. Below its confluence with the San Antonio River, the Iguazu River forms the border between Argentina and Brazil.",
        'https://images.pexels.com/photos/931007/pexels-photo-931007.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940/'),
    Places(
      'Plitvice Lakes National Park, Croatia',
      "Plitvice Lakes National Park is one of the oldest and largest national parks in Croatia. In 1979, Plitvice Lakes National Park was added to the UNESCO World Heritage register. The national park was founded in 1949 and is in the mountainous karst area of central Croatia, at the border to Bosnia and Herzegovina. The important north–south road that passes through the national park area connects the Croatian inland with the Adriatic coastal region. The protected area extends over 296.85 square kilometres (73,350 acres). About 90% of this area is part of Lika-Senj County, while the remaining 10% is part of Karlovac County.",
      'https://images.pexels.com/photos/2894362/pexels-photo-2894362.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    ),
    Places(
      'Great Barrier Reef, Australia',
      'The Great Barrier Reef is the world\'s largest coral reef system composed of over 2,900 individual reefs and 900 islands stretching for over 2,300 kilometres (1,400 mi) over an area of approximately 344,400 square kilometres (133,000 sq mi). The reef is located in the Coral Sea, off the coast of Queensland, Australia. The Great Barrier Reef can be seen from outer space and is the world\'s biggest single structure made by living organisms.',
      'https://images.pexels.com/photos/3410956/pexels-photo-3410956.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
    ),
    Places(
      'Palawan Island, Philippines',
      'Palawan is the largest island of the province of Palawan in the Philippines and the fifth largest island of the country. The north west coast of the island is along the South China Sea, while the south east coast forms part of the northern limit of the Sulu Sea. Much of the island remains traditional and is considered by some as under-developed. Abundant wildlife, jungle mountains, and some white sandy beaches attract many tourists, as well as international companies looking for development opportunities.',
      'https://images.pexels.com/photos/2406376/pexels-photo-2406376.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    ),
  ];

  //get methods
  String getPlaceName(pageNumber) {
    return _places[pageNumber].name;
  }

  String getPlaceInfo(pageNumber) {
    return _places[pageNumber].info;
  }

  String getPlaceUrl(pageNumber) {
    return _places[pageNumber].url;
  }

  int getTotalPlaceNumber() {
    return _totalPlaces;
  }
}
