import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:skygroup_chatapp/shared/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if(kIsWeb){
    // run the initialization for web 
 await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: Constants.apiKey, 
      appId: Constants.appId, 
      messagingSenderId: Constants.messagingSenderId,
       projectId: Constants.projectId));
  }

  else{
 // run the initialization for android ,ios
 await Firebase.initializeApp();

  }
 
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}
