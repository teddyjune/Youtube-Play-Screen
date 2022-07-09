import 'package:flutter/material.dart';
import 'package:youtube_playlist_screen/components/playlist_items.dart';
import 'package:youtube_playlist_screen/youtube_play_screen.dart';

class YoutubeMainScreen extends StatelessWidget {
  YoutubeMainScreen({Key? key}) : super(key: key);

  final playImage = [
    'assets/store.jpg',
    'assets/instagram.jpg',
    'assets/estate.jpg',
    'assets/idol.png',
    'assets/car.png',
    'assets/playlist1.png',
  ];

  final playlistName = [
    '포켓몬빵 품절이요',
    '맛있게 보이게 찍으세요',
    '여기가 127억이요',
    '17년 연습하고 집에 갈래?',
    '120개월 풀할부로 산거야',
    '나른한 오후 너랑 듣고 싶은 노래',
  ];

  final views = [
    '조회수 92만회 · 2개월 전',
    '조회수 54만회 · 2주 전',
    '조회수 91만회 · 1개월 전',
    '조회수 11만회 · 3시간 전',
    '조회수 46만회 · 4일 전',
    '조회수 53만회 · 5개월 전',
  ];

  final nameImage = [
    'assets/kick.jpg',
    'assets/kick.jpg',
    'assets/kick.jpg',
    'assets/kick.jpg',
    'assets/kick.jpg',
    'assets/kick.jpg',
  ];
  final name = [
    '킥서비스',
    '킥서비스',
    '킥서비스',
    '킥서비스',
    '킥서비스',
    '문화인',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Image.asset('assets/logo.png',
            width: 100, height: 100, fit: BoxFit.cover),
        title: const Text('YouTube'),
        actions: [
          IconButton(
            icon: const Icon(Icons.ondemand_video),
            onPressed: () {},
            color: Colors.white,
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            color: Colors.white,
          ),
          IconButton(
            icon: const Icon(Icons.menu_sharp),
            onPressed: () {},
            color: Colors.white,
          ),
          const SizedBox(),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
        itemCount: playlistName.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const YoutubePlayScreen()),
              );
            },
            child: PlaylistItems(
              playImage[index],
              playlistName[index],
              views[index],
              nameImage[index],
              name[index],
            ),
          );
        },
      ),
    );
  }
}
