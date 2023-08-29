import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wedding_planner_application/models/invitation_list.dart';
import 'package:wedding_planner_application/models/kitchen_list.dart';
import 'package:wedding_planner_application/models/song_list.dart';

import '../models/user_model.dart';
import '../shared/components/components.dart';

class GetData {
  UserModel? user_model;
  Future<UserModel?> readUsers() async {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(getProfileId())
        .get()
        .then((value) {
      user_model = UserModel.fromMap(value.data()!);
      print("gggggg");
      print(user_model?.brideName);
    });
    return user_model;
  }

  KitchenModel? kitchen_model;
  Future<KitchenModel?> readKitchen() async {
    await FirebaseFirestore.instance
        .collection("kitchen")
        .doc(getProfileId())
        .get()
        .then((value) {
      kitchen_model = KitchenModel.fromMap(value.data()!);
      print("gggggg");
      print(kitchen_model?.gran);
    });
    return kitchen_model;
  }

  SongModel? song_model;
  Future<SongModel?> readSong() async {
    await FirebaseFirestore.instance
        .collection("song list")
        .doc(getProfileId())
        .get()
        .then((value) {
      song_model = SongModel.fromMap(value.data()!);
      print("gggggg");
      print(song_model?.song1);
    });
    return song_model;
  }

  InvitationModel? invitation_model;
  Future<InvitationModel?> readInvitation() async {
    await FirebaseFirestore.instance
        .collection("invitation list")
        .doc(getProfileId())
        .get()
        .then((value) {
      invitation_model = InvitationModel.fromMap(value.data()!);
      print("gggggg");
      print(invitation_model?.invit1);
    });
    return invitation_model;
  }
}
