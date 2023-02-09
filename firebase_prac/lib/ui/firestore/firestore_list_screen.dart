import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_prac/ui/auth/login_screen.dart';
import 'package:firebase_prac/ui/auth/posts/add_posts.dart';
import 'package:firebase_prac/ui/firestore/add_firestore_data.dart';
import 'package:firebase_prac/utils/utils.dart';
import 'package:flutter/material.dart';


class FirestoreScreen extends StatefulWidget {
  const FirestoreScreen({Key? key}) : super(key: key);

  @override
  State<FirestoreScreen> createState() => _FirestoreScreenState();
}

class _FirestoreScreenState extends State<FirestoreScreen> {
  @override
  final auth = FirebaseAuth.instance;
  final editController  = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('FireStore Screen'),
        actions: [
          IconButton(onPressed: (){
            auth.signOut().then((value){

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));

            }).onError((error, stackTrace){
              Utils().ToastMessage(error.toString());
            });
          }, icon: Icon(Icons.logout_outlined))
        ],
      ),
      body: Column(
        children: [
           SizedBox(height: 20),

           Expanded(
            child: ListView.builder(
              itemCount: 5,
                itemBuilder: (context , index){

                  return const ListTile(
                    title: Text('Ibrar')
                  );
                }
            ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (context)=> AddFirestoreDataScreen()
          ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
  Future<void> showMyDialog(String title , String id)async{

    editController.text = title;

    return showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text('Update'),
            content: Container(
              child: TextFormField(
                controller: editController,
                decoration:const InputDecoration(
                    hintText: 'Edit'
                ),
              ),
            ),
            actions: [
              TextButton(
                  onPressed: (){
                    Navigator.pop(context);

                  },
                  child: Text('Cancel')
              ),
              TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text('Update')
              ),
            ],
          );
        }
    );

  }
}
