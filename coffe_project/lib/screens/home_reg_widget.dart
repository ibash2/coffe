import 'package:coffe_project/screens/sigin_page.dart';
import 'package:coffe_project/screens/signup_page.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Widget/utils.dart';
import '../screens/home_page.dart';

class Reg_menu extends StatelessWidget {
  Reg_menu({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      decoration:BoxDecoration( 
        image: DecorationImage(fit: BoxFit.fill,image: AssetImage('images/register.png')),
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
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0.2, 0, 0, 58.92),
                    height: 195,
                    child: Image.asset(
                      'images/illustration-animal.png',
                    ),
                  ),
                  MaterialButton(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      minWidth: double.maxFinite,
                      height: 51,
                      color: Color.fromRGBO(10, 10, 10, 1),
                      onPressed: () {
                        
                        // Navigator.pop(
                        //   context,
                        // );
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
                            return FractionallySizedBox(
                              heightFactor: 0.670,
                              child: signin_menu(),
                            );
                          },
                        );
                      },
                      child: Text(
                        'Войти',
                        style: SafeGoogleFont('Montserrat',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(255, 255, 255, 1)),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      height: 48,
                      onPressed: () {
                        // Navigator.pop(
                        //   context,
                        // );
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
                              heightFactor: 0.52,
                              child: signup_menu(),
                            );
                          },
                        );
                      },
                      child: Text(
                        'Зарегестрироваться',
                        style: SafeGoogleFont('Montserrat',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(43, 45, 51, 1)),
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
