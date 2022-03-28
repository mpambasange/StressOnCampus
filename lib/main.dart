import 'package:flutter/material.dart';
import 'package:campusstress/first.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

void main() {

  // Inicialização do firebase
  // WidgetsFlutterBinding.ensureInitialized();

 // FirebaseFirestore.instance.collection("utilizadores").doc("pontos").set({"Manuel": "250", "Ana": "560" });

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: first())
  );
}