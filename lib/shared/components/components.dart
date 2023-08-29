import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String? profileId;
Widget defaultCheckbox({
  required String text,
  required Function(bool?) function,
  required bool? check,
}) =>
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ColoredBox(
        color: Color(0xffc0d8c0),
        child: Material(
          child: CheckboxListTile(
            tileColor: Color(0xffc0d8c0),
            title: Text(text),
            value: check,
            onChanged: function,
          ),
        ),
      ),
    );
Widget deafaultAppBar({required String text}) => AppBar(
      title: Text(text),
      centerTitle: true,
      backgroundColor: Color(0xffffb3c6),
    );
Widget returnTextFormField() => TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
      ),
    );
Color green = Color(0xffc0d8c0);
Color pink = Color(0xffffb3c6);
Color paige = Color(0xFFF7E7CE);
Color darkGreen = Color(0xFF599656);
Color blue = Color(0xFFA8B5E0);
setProfileId(String? id) => profileId = id;
String? getProfileId() {
  return profileId;
}
