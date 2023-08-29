import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedding_planner_application/models/song_list.dart';
import 'package:wedding_planner_application/modules/checklist/show_song.dart';
import 'package:wedding_planner_application/shared/components/components.dart';

class SongScreen extends StatefulWidget {
  

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {

  final docUser = FirebaseFirestore.instance.collection('song list').doc(getProfileId());
  List <SongModel>? songList ;
 

 var  songController1 = TextEditingController();
  var songController2 = TextEditingController();
  var songController3 = TextEditingController();
  var songController4 = TextEditingController();
  var songController5 = TextEditingController();
  var songController6 = TextEditingController();
  var songController7 = TextEditingController();
  var songController8 = TextEditingController();
  var songController9 = TextEditingController();
  var songController10 = TextEditingController();
  var songController11 = TextEditingController();
  var songController12 = TextEditingController();
  var songController13 = TextEditingController();
  


  var formKey = GlobalKey<FormState>();
  
 


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add your Songs list",
        style: GoogleFonts.playfairDisplay(),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffffb3c6),
      ),

      bottomSheet: Container(
        width: double.infinity,
        height: 60,
        color: pink,
      child: MaterialButton(
        onPressed:  ()  {
           Navigator.push(
                                          context, 
                                          MaterialPageRoute(
                                                builder: (context) =>ShowSong(),
                                               ),
                                                   );
      }, 
        child: const Text("Song List",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
        ),
      ),
      ) ,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          color: paige,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                 TextFormField(    
                                   
                                   controller: songController1,
                                    decoration:  InputDecoration(
                                        border: OutlineInputBorder(),
                                        prefixIcon: IconButton(
                                          onPressed: () async {
                                            await docUser.update({
                                                "Song 1": songController1.text
                                              });
                                          },
                                           icon: Icon(Icons.add))
                                       ),
                                           ),
                                           TextFormField(    
                                   
                                   controller: songController2,
                                    decoration:  InputDecoration(
                                        border: OutlineInputBorder(),
                                        prefixIcon: IconButton(
                                          onPressed: () async {
                                            await docUser.update({
                                                "Song 2": songController2.text
                                              });
                                          },
                                           icon: Icon(Icons.add))
                                       ),
                                           ),
                                           TextFormField(    
                                   
                                   controller: songController3,
                                    decoration:  InputDecoration(
                                        border: OutlineInputBorder(),
                                        prefixIcon: IconButton(
                                          onPressed: () async {
                                            await docUser.update({
                                                "Song 3": songController3.text
                                              });
                                          },
                                           icon: Icon(Icons.add))
                                       ),
                                           ),
                                           TextFormField(    
                                   
                                   controller: songController4,
                                    decoration:  InputDecoration(
                                        border: OutlineInputBorder(),
                                        prefixIcon: IconButton(
                                          onPressed: () async {
                                            await docUser.update({
                                                "Song 4": songController4.text
                                              });
                                          },
                                           icon: Icon(Icons.add))
                                       ),
                                           ),
                                           TextFormField(    
                                   
                                   controller: songController5,
                                    decoration:  InputDecoration(
                                        border: OutlineInputBorder(),
                                        prefixIcon: IconButton(
                                          onPressed: () async {
                                            await docUser.update({
                                                "Song 5": songController5.text
                                              });
                                          },
                                           icon: Icon(Icons.add))
                                       ),
                                           ),
                                           TextFormField(    
                                   
                                   controller: songController6,
                                    decoration:  InputDecoration(
                                        border: OutlineInputBorder(),
                                        prefixIcon: IconButton(
                                          onPressed: () async {
                                            await docUser.update({
                                                "Song 6": songController6.text
                                              });
                                          },
                                           icon: Icon(Icons.add))
                                       ),
                                           ),
                                           TextFormField(    
                                   
                                   controller: songController7,
                                    decoration:  InputDecoration(
                                        border: OutlineInputBorder(),
                                        prefixIcon: IconButton(
                                          onPressed: () async {
                                            await docUser.update({
                                                "Song 7": songController7.text
                                              });
                                          },
                                           icon: Icon(Icons.add))
                                       ),
                                           ),
                                           TextFormField(    
                                   
                                   controller: songController8,
                                    decoration:  InputDecoration(
                                        border: OutlineInputBorder(),
                                        prefixIcon: IconButton(
                                          onPressed: () async {
                                            await docUser.update({
                                                "Song 8": songController8.text
                                              });
                                          },
                                           icon: Icon(Icons.add))
                                       ),
                                           ),
                                           TextFormField(    
                                   
                                   controller: songController9,
                                    decoration:  InputDecoration(
                                        border: OutlineInputBorder(),
                                        prefixIcon: IconButton(
                                          onPressed: () async {
                                            await docUser.update({
                                                "Song 9": songController9.text
                                              });
                                          },
                                           icon: Icon(Icons.add))
                                       ),
                                           ),
                                           TextFormField(    
                                   
                                   controller: songController10,
                                    decoration:  InputDecoration(
                                        border: OutlineInputBorder(),
                                        prefixIcon: IconButton(
                                          onPressed: () async {
                                            await docUser.update({
                                                "Song 10": songController10.text
                                              });
                                          },
                                           icon: Icon(Icons.add))
                                       ),
                                           ),
                                           TextFormField(    
                                   
                                   controller: songController11,
                                    decoration:  InputDecoration(
                                        border: OutlineInputBorder(),
                                        prefixIcon: IconButton(
                                          onPressed: () async {
                                            await docUser.update({
                                                "Song 11": songController11.text
                                              });
                                          },
                                           icon: Icon(Icons.add))
                                       ),
                                           ),
                                           TextFormField(    
                                   
                                   controller: songController12,
                                    decoration:  InputDecoration(
                                        border: OutlineInputBorder(),
                                        prefixIcon: IconButton(
                                          onPressed: () async {
                                            await docUser.update({
                                                "Song 12": songController12.text
                                              });
                                          },
                                           icon: Icon(Icons.add))
                                       ),
                                           ),
                                           TextFormField(    
                                   
                                   controller: songController13,
                                    decoration:  InputDecoration(
                                        border: OutlineInputBorder(),
                                        prefixIcon: IconButton(
                                          onPressed: () async {
                                            await docUser.update({
                                                "Song 13": songController13.text
                                              });
                                          },
                                           icon: Icon(Icons.add))
                                       ),
                                           ),
                 
              ],
              ),
          ),
          ),
      ),
    
    );
  }
}