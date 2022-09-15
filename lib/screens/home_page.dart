
import 'package:chamada_qrcode/model/professor.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bem vindo"),
        centerTitle: true,
      ),
      body: FutureBuilder<Professor?>(
        future: getData(),
        builder: (context, snapshot){         
          if(snapshot.hasData){
            Professor professor = snapshot.data!;
            return Center();
          }else{
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.blue
              ),
            );
          }
        }
        ),
    );
  }
  
  Future<Professor?> getData() async {
    Professor? p;
    return p;
  }

  //var q = await FirebaseFirestore.instance.collection("professor").where("email", isEqualTo: "silvaninho@gmail.com").get();
  //var q = await FirebaseFirestore.instance.collection("professor").doc("73oyK1REPNB1u6AMMdkw").get();
  //print(q.docs.first.data());
  //var g = await q.docs.first.reference.collection("groups").where("name", isEqualTo: "dispMoveis").get();
  //print(g.docs.first.data());
  //q.docs.map((e) => e.reference.collection("groups").where("name", isEqualTo: "dispMoveis").get().then((value) => print(value.docs.first.data())));
}
