import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:url_launcher/url_launcher.dart';

class Updates extends StatelessWidget {
  final Stream<QuerySnapshot> news =
      FirebaseFirestore.instance.collection('news').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: StreamBuilder<QuerySnapshot>(
                stream: news,
                builder: (
                  BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot,
                ) {
                  if (snapshot.hasError) {
                    return Text('Error');
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Text("Loading");
                  }

                  final data = snapshot.requireData;

                  return ListView.builder(
                    itemCount: data.size,
                    itemBuilder: (context, index) {
                      return Center(
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 20, top: 10, left: 10, right: 10),
                              child: GestureDetector(
                                child: Text(
                                  data.docs[index]['title'],
                                  textAlign: TextAlign.center,
                                ),
                                onTap: () async {
                                  String url =
                                      data.docs[index]['link'].toString();
                                  if (!await launch(url)) {
                                    print("can't open url");
                                  }
                                },
                              )));
                    },
                  );
                })));
  }
}
