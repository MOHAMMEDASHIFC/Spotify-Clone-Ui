import 'package:flutter/material.dart';

class LibraryView extends StatefulWidget {
  const LibraryView({Key? key}) : super(key: key);

  @override
  State<LibraryView> createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
  final List<Map<String, String>> musicArtists = [
    {
      'name': 'Charlie Puth',
      'photoUrl':
          'https://i.scdn.co/image/ab6761610000e5eb4e2e2c78de847c4d9b12d32f',
    },
    {
      'name': 'Selena Gomez',
      'photoUrl':
          'https://m.media-amazon.com/images/M/MV5BMjAwNTE2MDMyMl5BMl5BanBnXkFtZTgwMjAyODM3MTI@._V1_FMjpg_UX1000_.jpg',
    },
    {
      'name': 'Coldplay',
      'photoUrl':
          'https://i.scdn.co/image/ab6761610000e5eb989ed05e1f0570cc4726c2d3',
    },
    {
      'name': 'The Chainsmokers',
      'photoUrl':
          'https://lastfm.freetls.fastly.net/i/u/ar0/650929f2f55d2c0563009ea1744e29f0.jpg',
    },
    {
      'name': 'Billie Eilish',
      'photoUrl':
          'https://upload.wikimedia.org/wikipedia/commons/7/78/BillieEilishO2160622_%2811_of_45%29_%2852152972296%29_%28cropped_2%29.jpg',
    },
    {
      'name': 'Camila Cabello',
      'photoUrl':
          'https://upload.wikimedia.org/wikipedia/commons/d/da/Camila_Cabello_by_GQ_%28September_2021%29_02.jpg',
    },
    {
      'name': 'Marshmello',
      'photoUrl':
          'https://staticg.sportskeeda.com/editor/2022/05/d2ed2-16528905851066-1920.jpg',
    },
    {
      'name': 'Anne-Marie',
      'photoUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdUkRaK0N4e8gtDydw7d4qPKWSj56qipsu5Q&usqp=CAU',
    },
    {
      'name': 'Ava Max',
      'photoUrl':
          'https://i0.wp.com/www.metroweekly.com/wp-content/uploads/2023/01/FEATURE-COVER-Ava-Max-by-Marilyn-Hue.jpg?resize=416%2C625&ssl=1',
    },
    {
      'name': 'Indila',
      'photoUrl':
          'https://i.scdn.co/image/ab67616d0000b2734ae8ff731c49965bf2083405',
    },
    {
      'name': 'Zayn',
      'photoUrl':
          'https://nogunk.com/cdn/shop/articles/Zayn_Malik_with_lucious_messy_hair_600x.jpg?v=1645109356',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Music Library'),
      ),
      body: ListView.builder(
        itemCount: musicArtists.length,
        itemBuilder: (BuildContext context, int index) {
          final artist = musicArtists[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(artist['photoUrl']!),
            ),
            title: Text(artist['name']!),
            onTap: () {},
          );
        },
      ),
    );
  }
}
