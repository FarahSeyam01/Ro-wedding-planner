import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wedding_planner_application/models/kitchen_list.dart';
import 'package:wedding_planner_application/shared/components/components.dart';

import '../../dio/getData.dart';

class KitchenScreen extends StatefulWidget {
  const KitchenScreen({super.key});

  @override
  State<KitchenScreen> createState() => _KitchenScreenState();
}

class _KitchenScreenState extends State<KitchenScreen> {
  KitchenModel? kitchenmodel;
  bool isLoading = true;

  getUser() async {
    kitchenmodel = await GetData().readKitchen();
    print(kitchenmodel?.bi);
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    getUser();
    print(kitchenmodel?.gran);
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            bottomSheet: Container(
              width: double.infinity,
              height: 80,
              color: pink,
              child: MaterialButton(
                onPressed: () async {
                  await FirebaseFirestore.instance
                      .collection("kitchen")
                      .doc(getProfileId())
                      .update({
                    'الجرانيت': kitchenmodel!.gran,
                    'البيركس': kitchenmodel!.bi,
                    'براد الشاي': kitchenmodel!.pot,
                    'الصيني': kitchenmodel!.china,
                    'طقم العشا': kitchenmodel!.dinner,
                    'الستانليس': kitchenmodel!.stain,
                  });
                },
                child: const Text(
                  "Save data",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            appBar: AppBar(
              title: Text("المطبخ"),
              centerTitle: true,
              backgroundColor: Color(0xffffb3c6),
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                width: double.infinity,
                color: Color(0xFFF7E7CE),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            "assets/images/kitchen.jpeg",
                            height: 100.0,
                            width: 100.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    defaultCheckbox(
                      text: "الجرانيت",
                      check: kitchenmodel!.gran,
                      function: (value) {
                        setState(() {
                          kitchenmodel!.gran = value;
                        });
                      },
                    ),
                    defaultCheckbox(
                      text: "الصيني",
                      check: kitchenmodel!.china,
                      function: (value) {
                        setState(() {
                          kitchenmodel!.china = value;
                        });
                      },
                    ),
                    defaultCheckbox(
                      text: "طقم العشا",
                      check: kitchenmodel!.dinner,
                      function: (value) {
                        setState(() {
                          kitchenmodel!.dinner = value;
                        });
                      },
                    ),
                    defaultCheckbox(
                      text: "البيركس",
                      check: kitchenmodel!.bi,
                      function: (value) {
                        setState(() {
                          kitchenmodel!.bi = value;
                        });
                      },
                    ),
                    defaultCheckbox(
                      text: "الستانليس",
                      check: kitchenmodel!.stain,
                      function: (value) {
                        setState(() {
                          kitchenmodel!.stain = value;
                        });
                      },
                    ),
                    defaultCheckbox(
                      text: "براد الشاي",
                      check: kitchenmodel!.pot,
                      function: (value) {
                        setState(() {
                          kitchenmodel!.pot = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
