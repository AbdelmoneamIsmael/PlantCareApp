import 'package:cloud_firestore/cloud_firestore.dart';

 class Failure {
  final  FirebaseException firebaseException;

  Failure({required this.firebaseException});
 message(FirebaseException e){
   return "Failed with error '${e.code}': ${e.message}";
 }
}