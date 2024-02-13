import 'package:first_provider/breadCrumbChangeNotifier.dart';
import 'package:first_provider/classBreadCrumb.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class newBreadCrumbWidget extends StatefulWidget {
  const newBreadCrumbWidget({super.key});

  @override
  State<newBreadCrumbWidget> createState() => _newBreadCrumbWidgetState();
}

class _newBreadCrumbWidgetState extends State<newBreadCrumbWidget> {
  late final TextEditingController _controller;

  @override

  void initState() {
    _controller= TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      centerTitle: true,
      toolbarHeight: 70,
      backgroundColor: Colors.deepPurpleAccent,
      title: Text('Add New BreadCrumb'),

    ),
      body: Column(
             children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Enter a new bread crumb',
                      ),
                    ),
                  ),

                  TextButton(onPressed: (){
                    final text= _controller.text;
                    if(text.isNotEmpty){
                      final breadCrumb= BreadCrumb(
                        isActive: false,
                         name: text );
                    context.read<BreadCrumbProvider>().add(breadCrumb);}

                    Navigator.of(context).pop();
                  }, 
                  child:Text('Add', style:
                                      TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.lightBlue

         ),))
                    ],
      ),
    );
  }
}