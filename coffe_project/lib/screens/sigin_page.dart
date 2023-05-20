import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'home_page.dart';


class Sigin extends StatelessWidget {
  const Sigin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Center(
        child: SizedBox(
         width: 300,
         height: 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Вход',style: TextStyle(fontSize: 30,color: Colors.blue),),
              const SizedBox(height: 20,),
              Form(autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                onChanged: (value) {
                  
                  
                },
                decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Логин'
                )),
                ),
              const SizedBox(height: 9,),
              TextField(
                onChanged: (value) {
                  
                  
                },
                obscureText: true,
                decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Пароль'
                
              ),),
              SizedBox(height: 20,),

              Row(
                children: [
                  const SizedBox(width: 20,),
                  ElevatedButton(onPressed:() {
                  }, child: const Text('Войти')),
                  const SizedBox(width: 20,),
                  OutlinedButton(onPressed: () {
                    Navigator.pop(context,
                    MaterialPageRoute(builder: (context) =>  Home_page())
                   );
                  }, 
                  child: const Text('Назад'))
                ],
              ),
            ],
          ),
        ),
      ));
  }
}