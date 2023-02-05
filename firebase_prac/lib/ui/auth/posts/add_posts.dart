import 'package:firebase_prac/widgets/round_button.dart';
import 'package:flutter/material.dart';


class AddPostScreen extends StatefulWidget {
  const AddPostScreen({Key? key}) : super(key: key);

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Posts'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
                height: 50
            ),

            TextFormField(
              maxLines: 4,
              decoration:const InputDecoration(
                hintText: 'What is in your mind?',
                border: OutlineInputBorder()
              ),

            ),
           const SizedBox(
              height:30
            ),
            RoundButton(
                title: 'Add',
                onTap: (){

                }
            ),

          ],

        ),
      ),
    );
  }
}
