import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedding_planner_application/models/song_list.dart';

import '../../dio/getData.dart';
import '../../shared/components/components.dart';

class ShowSong extends StatefulWidget {
  const ShowSong({super.key});

  @override
  State<ShowSong> createState() => _ShowSongState();
}

class _ShowSongState extends State<ShowSong> {
  SongModel? songmodel;
  bool isLoading = true;

  getUser() async {
    songmodel = await GetData().readSong();
    print(songmodel?.song1);
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    getUser();
    print(songmodel?.song1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Songs List",
          style: GoogleFonts.playfairDisplay(),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffffb3c6),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              width: double.infinity,
              height: double.infinity,
              color: paige,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.play_arrow),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          songmodel!.song1 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.play_arrow),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          songmodel!.song2 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.play_arrow),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          songmodel!.song3 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.play_arrow),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          songmodel!.song4 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.play_arrow),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          songmodel!.song5 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.play_arrow),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          songmodel!.song6 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.play_arrow),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          songmodel!.song7 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.play_arrow),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          songmodel!.song8 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.play_arrow),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          songmodel!.song9 ?? " None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.play_arrow),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          songmodel!.song10 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.play_arrow),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          songmodel!.song11 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.play_arrow),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          songmodel!.song12 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.play_arrow),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          songmodel!.song13 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
