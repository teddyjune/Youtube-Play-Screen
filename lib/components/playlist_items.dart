import 'package:flutter/material.dart';

class PlaylistItems extends StatelessWidget {
  final String playImage;
  final String playlistName;
  final String views;

  const PlaylistItems(this.playImage, this.playlistName, this.views, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Image.asset(
            playImage,
            width: 200,
            height: 100,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(playlistName,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),),
                Text(views,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
