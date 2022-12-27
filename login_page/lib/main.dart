import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Facebook'),
          backgroundColor: Colors.blue,
        ),


        body: SafeArea(
            child:
            Column(
              children: [
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const[
                  Image(
                      image: NetworkImage('https://image.shutterstock.com/image-photo/kiev-ukraine-april-27-2015-260nw-278925056.jpg'),
                    height: 50,
                    width: 50,

                  ),

                ],

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Login Page' ,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff2D3142),

                    ),
                  ),

                ],
              ),

               const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 20 , right: 20),
                  child: TextFormField(
                    decoration:  InputDecoration(
                      hintText: 'Name',
                      filled: true,
                      fillColor:const Color(0xffF8F9FA),
                      prefixIcon: Icon(Icons.person),
                      focusedBorder:OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(15)

                      ),
                      enabledBorder:OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(15)

                      ),

                    ),
                  ),

                ),
               const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20 , right: 20),
                  child: TextFormField(
                    decoration:  InputDecoration(
                      hintText: 'Number',
                      filled: true,
                      fillColor:const Color(0xffF8F9FA),
                      prefixIcon:const Icon(Icons.phone),
                      focusedBorder:OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(15)

                      ),
                      enabledBorder:OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(15)

                      ),

                    ),
                  ),

                ),

               const SizedBox(height: 20),
               Padding(
                   padding: const EdgeInsets.only(left: 20 , right: 20),
                 child: TextFormField(
                   decoration:  InputDecoration(
                     hintText: 'Email',
                     filled: true,
                     fillColor:const Color(0xffF8F9FA),
                     prefixIcon:const Icon(Icons.alternate_email),
                     focusedBorder:OutlineInputBorder(
                       borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                       borderRadius: BorderRadius.circular(15)

                     ),
                     enabledBorder:OutlineInputBorder(
                         borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                         borderRadius: BorderRadius.circular(15)

                     ),

                   ),
                 ),

               ),
               const SizedBox(height: 15),
               Padding(
                   padding: const EdgeInsets.only(left: 20 , right: 20),
                 child: TextFormField(
                   decoration:  InputDecoration(
                     hintText: 'Password',
                     filled: true,
                     fillColor: const Color(0xffF8F9FA),
                     prefixIcon: const Icon(Icons.lock_open ),
                     suffixIcon: const Icon(Icons.visibility_off_outlined),
                     focusedBorder: OutlineInputBorder(
                       borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                       borderRadius: BorderRadius.circular(15)
                     ),
                     enabledBorder:OutlineInputBorder(
                         borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                         borderRadius: BorderRadius.circular(15)

                     ),

                   ),
                 ),
                 
               ),

               const SizedBox(height: 50),
                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(

                      height: 50,
                      width: 300,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue,
                      ),
                      child:const Center(
                        child: Text(
                            'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),

                    ),
                  ],


                  ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const[
                    Text(
                        'Forgotten Password?',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,

                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                        'Dont have an account?',
                      style: TextStyle(
                        fontSize: 15,
                      ),

                    ),
                    Text(
                        'SignUp',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xffF9703B),
                      ),

                    ),
                  ],
                ),



              ],
            ),
        )


      ),
    );
  }
}


