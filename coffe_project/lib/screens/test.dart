import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Widget/utils.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration( 
        image: DecorationImage(image: AssetImage('images/register.png')),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            toolbarHeight: 69,
            leading: MaterialButton(
              onPressed: () async{
                      
                      await FirebaseAuth.instance.currentUser!.delete();
                      },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'Регистрация',
              style: SafeGoogleFont('SF Pro Display',
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.w600),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left:20,right: 20),
            child: Column(

              children: [
                SizedBox(height: 200,),
                Center(
                  child: Text(
                    """       Письмо с подтверждением было
отправлено на вашу электронную почту.""",
                    style: SafeGoogleFont(
                      'SF Pro Display',
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                const SizedBox(height: 61),
                MaterialButton(
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
                  minWidth: 339,
                  height: 57,
                  color: Color.fromRGBO(58, 43, 37, 1),
                  onPressed: (){},
                  child: Text('Отправить повторно',  style: SafeGoogleFont('SF Pro Display',fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),),
                
                  ),
                
               
              ],
            ),
          ),
        ),
      );
      
    
  }
}