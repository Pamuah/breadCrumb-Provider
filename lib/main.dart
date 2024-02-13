import 'package:first_provider/breadCrumbChangeNotifier.dart';
import 'package:first_provider/hompage.dart';
import 'package:first_provider/newbreadCrumbWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:device_preview/device_preview.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
     DeviceOrientation.portraitDown]).then((value) =>
      runApp(
        DevicePreview(
          enabled: false,
          builder: (context) => const MyApp(),
        ),
       ));
 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(_)=>BreadCrumbProvider() ,
      
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',home:HomePage() ,
        routes: {
          '/new': (context)=>newBreadCrumbWidget()
        },
       
      ),
    );
  }
}
