import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_prac/ui/auth/login_screen.dart';
import 'package:firebase_prac/ui/auth/posts/add_posts.dart';
import 'package:firebase_prac/utils/utils.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  final auth = FirebaseAuth.instance;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PostScreen'),
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
      floatingActionButton: FloatingActionButton(
          onPressed: (){
           Navigator.push(context, MaterialPageRoute(
               builder: (context)=> AddPostScreen()
           ));
          },
        child: Icon(Icons.add),
      ),
    );
  }
}
