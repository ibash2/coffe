import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Widget/utils.dart';
import '../services/snack_bar.dart';

class signup_menu extends StatefulWidget {
  const signup_menu({super.key});

  @override
  State<signup_menu> createState() => _signup_menuState();
}

class _signup_menuState extends State<signup_menu> {
  TextEditingController emailTextInputController = TextEditingController();
  TextEditingController passwordTextInputController = TextEditingController();
  TextEditingController passwordTextRepeatInputController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailTextInputController.dispose();
    passwordTextInputController.dispose();
    passwordTextRepeatInputController.dispose();

    super.dispose();
  }
  Future<void> signUp() async {
    final navigator = Navigator.of(context);

    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailTextInputController.text.trim(),
        password: passwordTextInputController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e.code);

      if (e.code == 'email-already-in-use') {
        print('sdfsdfs');
        SnackBarService.showSnackBar(
          context,
          'Такой Email уже используется, повторите попытку с использованием другого Email',
          true,
        );
        return;
      } else {
        SnackBarService.showSnackBar(
          context,
          'Неизвестная ошибка! Попробуйте еще раз или обратитесь в поддержку.',
          true,
        );
      }
    }

    navigator.pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
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
            width: double.infinity,
            child: Text(
              'Создайте ваш аккаунт',
              textAlign: TextAlign.start,
              style: SafeGoogleFont(
                'Montserrat Alternates',
                fontSize: 24,
                fontWeight: FontWeight.w500,
                height: 1.2999999523,
                letterSpacing: -0.5,
                color: Color(0xff0a0a0a),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 24),
            width: double.infinity,
            child: Text(
              textAlign: TextAlign.start,
              'Cоздайте свою учетную запись, это займет меньше минуты. Введите свой адрес электронной почты и пароль',
              style: SafeGoogleFont(
                'Montserrat Alternates',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 1.2999999523,
                letterSpacing: -0.5,
                color: Color(0xff808185),
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
                    key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailTextInputController,
                        validator: (email) =>
                        email != null && !EmailValidator.validate(email)
                            ? 'Введите правильный Email'
                            : null,
                        onChanged: (value) {},
                        obscureText: false,
                        decoration: InputDecoration(
                            hintStyle: SafeGoogleFont('Montserrat',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(128, 129, 133, 1)),
                            contentPadding: EdgeInsets.fromLTRB(12, 35, 0, 0),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(237, 237, 237, 1)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            hintText: 'Электронная почта'),
                      ),
                    
                  const SizedBox(
                    height: 9,
                  ),
                  TextFormField(
                    autocorrect: false,
                controller: passwordTextInputController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) => value != null && value.length < 6
                    ? 'Минимум 6 символов'
                    : null,
                    onChanged: (value) {},
                    obscureText: true,
                    decoration: InputDecoration(
                        hintStyle: SafeGoogleFont('Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(128, 129, 133, 1)),
                        contentPadding: EdgeInsets.fromLTRB(12, 35, 0, 0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(237, 237, 237, 1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        hintText: 'Пароль'),
                  ),],
                  ),),
                  SizedBox(
                    height: 12,
                  ),
                  MaterialButton(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      minWidth: double.maxFinite,
                      height: 48,
                      color: Color.fromRGBO(221, 244, 45, 1),
                      onPressed: signUp,
                      child: Text(
                        'Создать',
                        style: SafeGoogleFont('Montserrat',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(10, 10, 10, 1)),
                      )),
                  const SizedBox(
                    height: 25,
                  ),
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
                          child: Text('or',
                              style: SafeGoogleFont('Montserrat',
                                  fontSize: 16,
                                  color: Color.fromRGBO(128, 129, 133, 1),
                                  fontWeight: FontWeight.w500)),
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
                    height: 25,
                  ),
                  MaterialButton(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      minWidth: double.maxFinite,
                      height: 48,
                      color: Color.fromRGBO(10, 10, 10, 1),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                          Text(
                            'Continue with Google',
                            style: SafeGoogleFont('Montserrat',
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 16,
                  ),
                  MaterialButton(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      minWidth: double.maxFinite,
                      height: 48,
                      color: Color.fromRGBO(10, 10, 10, 1),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                          Text(
                            'Continue with Apple',
                            style: SafeGoogleFont('Montserrat',
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 16,
                  ),
                  MaterialButton(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      minWidth: double.maxFinite,
                      height: 48,
                      color: Color.fromRGBO(10, 10, 10, 1),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                          Text(
                            'Continue with Facebook',
                            style: SafeGoogleFont('Montserrat',
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

