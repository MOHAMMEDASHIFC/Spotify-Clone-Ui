import 'package:flutter/material.dart';

class SongCard2 extends StatelessWidget {
  final AssetImage image;
  const SongCard2({super.key, required this.image});

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
            "Mix Fm,Jovem Pan,Transmerica Fm,MPB Fm,Nova Fm,Radio Globe Fm",
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
