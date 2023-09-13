import 'package:flutter/material.dart';

import 'package:spotify/widgets/song_card.dart';
import 'package:spotify/widgets/song_card2.dart';

import '../widgets/album_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            decoration: const BoxDecoration(
              color: Color(0xFf1C7A74),
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                  ],
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recently Played",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.history),
                              SizedBox(width: 16),
                              Icon(Icons.settings),
                              SizedBox(width: 16),
                              Icon(Icons.person),
                            ],
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          AlbumCard(
                            label: "Best Mode",
                            image: AssetImage("assets/best.jpeg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Power Gaming",
                            image: AssetImage("assets/album_1.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Top 50-Global",
                            image: AssetImage("assets/top50.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Motivation Mix",
                            image: AssetImage("assets/album6.jpeg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Top Songs - Global",
                            image: AssetImage("assets/album_3.jpg"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Good Evening",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const SizedBox(height: 16),
                          const Row(
                            children: [
                              RowAlbumCard(
                                label: "Top 50 - Global",
                                image: AssetImage("assets/top50.jpg"),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "Best Mode",
                                image: AssetImage("assets/best.jpeg"),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          const Row(
                            children: [
                              RowAlbumCard(
                                label: "Alan Walker",
                                image: AssetImage("assets/album_7.jpg"),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "Nicki Minaj",
                                image: AssetImage("assets/album_12.jpg"),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          const Row(
                            children: [
                              RowAlbumCard(
                                label: "Pop Remix",
                                image: AssetImage("assets/album_10.jpg"),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "Top 50 - USA",
                                image: AssetImage("assets/album_9.jpg"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Based On Your Recent Listening",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Row(
                            children: [
                              SongCard(
                                image: const AssetImage("assets/download.jpeg"),
                              ),
                              const SizedBox(width: 16),
                              SongCard(
                                image: const AssetImage("assets/taylor.jpeg"),
                              ),
                              const SizedBox(width: 16),
                              SongCard(
                                image: const AssetImage("assets/justin.jpeg"),
                              ),
                              const SizedBox(width: 16),
                              SongCard(
                                image: const AssetImage("assets/drake.jpeg"),
                              ),
                              const SizedBox(width: 16),
                              SongCard(
                                image:
                                    const AssetImage("assets/ed sheeran.jpeg"),
                              ),
                              const SizedBox(width: 16),
                              SongCard(
                                image: const AssetImage("assets/album_9.jpg"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Recommended Radio",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        const SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Row(
                            children: [
                              SongCard2(
                                image: AssetImage("assets/radio1.jpeg"),
                              ),
                              SizedBox(width: 16),
                              SongCard2(
                                image: AssetImage("assets/radio 3.jpeg"),
                              ),
                              SizedBox(width: 16),
                              SongCard2(
                                image: AssetImage("assets/radio 4.jpeg"),
                              ),
                              SizedBox(width: 16),
                              SongCard2(
                                image: AssetImage("assets/radio 5.jpeg"),
                              ),
                              SizedBox(width: 16),
                              SongCard2(
                                image: AssetImage("assets/radio 6.jpeg"),
                              ),
                              SizedBox(width: 16),
                              SongCard2(
                                image: AssetImage("assets/radio 7.jpeg"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const RowAlbumCard({
    super.key,
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(8),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image(
              image: image,
              height: 48,
              width: 48,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 8),
            Text(label)
          ],
        ),
      ),
    );
  }
}
