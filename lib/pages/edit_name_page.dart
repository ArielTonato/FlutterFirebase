import 'package:firebase_crud/services_firebase/firebase_service.dart';
import 'package:flutter/material.dart';

class EditNamePage extends StatefulWidget {
  const EditNamePage({super.key});

  @override
  State<EditNamePage> createState() => _EditNamePageState();
}

class _EditNamePageState extends State<EditNamePage> {

  TextEditingController nameController = TextEditingController(text: ''); 
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)!.settings .arguments as Map;
    nameController = TextEditingController(text:arguments['name']);
    return Scaffold(
      appBar:AppBar(
        title: const Text('Edit name'),
      ) ,
      body:  Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
             TextField(
              controller: nameController,
              decoration:  const InputDecoration(
                hintText: 'Modificar',
              ),
            ),
            ElevatedButton(onPressed: ()async{
              await updatePeople(arguments['uid'], nameController.text).then((value){
                Navigator.pop(context);
              });
              }
            , child:const Text('Actualizar'))
          ]),
      ),
    );
  }
}