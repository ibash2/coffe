import 'package:coffe_project/screens/signup_page.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Widget/utils.dart';
import 'home_page.dart';

class signin_menu extends StatefulWidget {
  signin_menu({super.key});

  @override
  State<signin_menu> createState() => _signin_menuState();
}

class _signin_menuState extends State<signin_menu> {
  TextEditingController emailTextInputController = TextEditingController();
  TextEditingController passwordTextInputController = TextEditingController();
  // final formKey = GlobalKey<FormState>();
  final cur = FirebaseAuth.instance.currentUser;

  Future<void> sigin(String a, String b) async{
    try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: a.trim(),
    password: b.trim()
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
  print(e.code);
}}
  
  void ret(){
    if (cur != null){
      Navigator.pushNamed(context,'/home');
    }
    else{
      Navigator.pop(context, signin_menu());
    }
  }

  @override
  Widget build(BuildContext context) {
    return 
    
    Container(
      decoration:BoxDecoration( 
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(fit: BoxFit.fill,image: AssetImage('images/register.png'),
              
             ),
        ),
        child:Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 16, 0, 16),
            width: 63,
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xffe8e8e8),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 0, 7),
            width: 240,
            child: Text(
              'Добро пожаловать',
              textAlign: TextAlign.start,
              style: SafeGoogleFont(
                'Sarala',
                fontSize: 24,
                fontWeight: FontWeight.w700,
                height: 1.2999999523,
                letterSpacing: -0.5,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 0, 24),
            width: double.infinity,
            child: Text(
              textAlign: TextAlign.start,
              'Мы рады видеть вас снова. Введите адрес электронной почты и пароль',
              style: SafeGoogleFont(
                'Sarala',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 1.2999999523,
                letterSpacing: -0.5,
                color: Colors.white,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Form(
                    // key: formKey,
                    child: 
                  Column(
                    children: [
                      TextFormField(
                        validator: (email) =>
                        email != null && !EmailValidator.validate(email)
                            ? 'Введите правильный Email'
                            : null,
                        
                        onChanged: (value) {

                        },
                        controller: emailTextInputController,
                        obscureText: false,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                            hintStyle: SafeGoogleFont('Montserrat',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(128, 129, 133, 1)),
                            contentPadding: EdgeInsets.fromLTRB(12, 40, 0, 0),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(237, 237, 237, 1)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(28))),
                            hintText: 'Электронная почта'),
                      ),
                    
                  const SizedBox(
                    height: 9,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) => value != null && value.length < 6
                    ? 'Минимум 6 символов'
                    : null,
                    onChanged: (value) {

                    },
                    controller: passwordTextInputController,
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                          filled: true,
                        hintStyle: SafeGoogleFont('Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(128, 129, 133, 1)),
                        contentPadding: EdgeInsets.fromLTRB(12, 40, 0, 0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(237, 237, 237, 1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(28))),
                        hintText: 'Пароль'),
                  ),],
                  ),),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: 168,
                    child: MaterialButton(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(28))),
                        minWidth: double.maxFinite,
                        height: 65,
                        
                        color: Color.fromRGBO(254, 177, 113, 1),
                        onPressed: () {
                          sigin(emailTextInputController.text,passwordTextInputController.text);
                          ret();
                        },
                        child: Text(
                          'Войти',
                          style: SafeGoogleFont('Montserrat',
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(10, 10, 10, 1)),
                        )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  MaterialButton(
                      height: 48,
                      onPressed: () {
                        FirebaseAuth.instance.signOut();
                        
                      },
                      child: Text(
                        'Забыли пароль?',
                        style: SafeGoogleFont('Montserrat Alternates',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(43, 45, 51, 1)),
                      )),
                      SizedBox(height: 15,),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          width: 160,
                          child: const Divider(
                            height: 2,
                            thickness: 2,
                            color: Color.fromRGBO(237, 237, 237, 1),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text('или',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                                
                          
                              )),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          width: 160,
                          child: const Divider(
                            height: 2,
                            thickness: 2,
                            color: Color.fromRGBO(237, 237, 237, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 28,),
                  MaterialButton(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      minWidth: double.maxFinite,
                      height: 51,
                      color: Color.fromRGBO(221, 123, 229, 1),
                      onPressed: () {
                        // print(cur);
                        Navigator.pop(context, );
                        showModalBottomSheet(
                      backgroundColor: Color(0xffffffff),
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        topLeft: Radius.circular(16),
                      )),
                      context: context,
                      builder: (BuildContext context) {
                        return const FractionallySizedBox(
                          heightFactor: 0.520,
                          child: signup_menu(),
                        );
                      },
                    );
                      },
                      child: Text(
                        'Зарегистрироваться',
                        style: SafeGoogleFont('Sarala',
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(255, 255, 255, 1)),
                      )),
                  
                  
                ],
              ),
            ),
          ),
        ],
      ),
    ),);
  }
}

