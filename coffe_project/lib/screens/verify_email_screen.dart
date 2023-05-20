import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Widget/utils.dart';
import '../services/snack_bar.dart';
import 'home_page.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  bool isEmailVerified = false;
  bool canResendEmail = false;
  Timer? timer;

  @override
  void initState() {
    super.initState();

    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;

    if (!isEmailVerified) {
      sendVerificationEmail();

      timer = Timer.periodic(
        const Duration(seconds: 3),
        (_) => checkEmailVerified(),
      );
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Future<void> checkEmailVerified() async {
    await FirebaseAuth.instance.currentUser!.reload();

    setState(() {
      isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    });

    print(isEmailVerified);

    if (isEmailVerified) timer?.cancel();
  }

  Future<void> sendVerificationEmail() async {
    try {
      final user = FirebaseAuth.instance.currentUser!;
      await user.sendEmailVerification();

      setState(() => canResendEmail = false);
      await Future.delayed(const Duration(seconds: 5));

      setState(() => canResendEmail = true);
    } catch (e) {
      print(e);
      if (mounted) {
        SnackBarService.showSnackBar(
          context,
          '$e',
          //'Неизвестная ошибка! Попробуйте еще раз или обратитесь в поддержку.',
          true,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) => isEmailVerified
      ? Home_page()
      : Container(
      decoration:BoxDecoration( 
        image: DecorationImage(image: AssetImage('images/register.png')),
        ),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            toolbarHeight: 69,
            leading: MaterialButton(
              onPressed: () async{
                      timer?.cancel();
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
                  onPressed: canResendEmail ? sendVerificationEmail : null,
                  child: Text('Отправить повторно',  style: SafeGoogleFont('SF Pro Display',fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),),
                
                  ),
                
               
              ],
            ),
          ),
        ),);
}
