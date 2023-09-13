import 'package:flutter/material.dart';
import 'package:spotify/views/album_view.dart';

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  final void Function()? onTap; // Update the type here
  const AlbumCard({
    Key? key, // Change 'super.key' to 'Key? key'
    required this.image,
    required this.label,
    this.onTap,
    // required this.onTap,
  }) : super(key: key); // Update the super constructor here

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AlbumView(
              image: image,
            ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: image,
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(label),
        ],
      ),
    );
  }
}
