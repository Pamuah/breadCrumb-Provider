import 'package:first_provider/breadCrumbChangeNotifier.dart';
import 'package:first_provider/breadCrumbWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      toolbarHeight: 70,
      backgroundColor: Colors.deepPurpleAccent,
      title: Text('BreadCrumb App'),

    ),

    body: Column(
      children: [
        Consumer<BreadCrumbProvider>(builder:(context, value, child){
          return BreadCrumbWidget(breadCrumbs: value.items);
        }),
        TextButton(onPressed: (){
          Navigator.of(context).pushNamed(
            '/new'
          );
        },
         child: Text('Add new Bread Crumb', style:
          TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.lightBlue

         ),),),

          TextButton(onPressed: (){
              context.read<BreadCrumbProvider>().reset();
        },
         child: Text('Reset', style:
          TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.lightBlue

         ),),),
      ],
    ),
    );
  }
}