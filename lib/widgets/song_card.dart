import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;
  SongCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      child: Column(
        children: [
          Image(
            image: image,
            width: 140,
            height: 140,
          ),
          Text(
            "Zayn Malik,Taylor Swift,Justin Beiber,Drake,Ed Sheeran,Weekend",
            style: Theme.of(context).textTheme.caption,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
