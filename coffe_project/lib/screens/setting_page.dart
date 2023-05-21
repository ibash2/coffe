import 'package:flutter/material.dart';



class MySetting extends StatefulWidget {
  const MySetting({super.key});

  @override
  State<MySetting> createState() => _MySettingState();
}

class _MySettingState extends State<MySetting> {
  bool light= false;
  bool light1 =false;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill, image: AssetImage('images/register.png')),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text("Настройки"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.2),
                  borderRadius: BorderRadius.circular(45),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[Padding(
                    padding: const EdgeInsets.only(left:20.0,right:20.0),
                    child: Text("Получать письма с  обновлениями"),
                  ),
                  Switch(
                  value: light,
                  activeColor: Colors.blue,
                  onChanged: (bool value) {
                   
                    setState(() {
                      light = value;
                    });
                  },
                  ),
                  ]),
                  ),
                  SizedBox(height: 20,),
                  Container(
                height: 50,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.2),
                  borderRadius: BorderRadius.circular(45),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[Padding(
                    padding: const EdgeInsets.only(left: 20.0,right:20.0),
                    child: Text("Получать письма о снижении цен"),
                  ),
                  Switch(
                  value: light1,
                  activeColor: Colors.blue,
                  onChanged: (bool value) {
                   
                    setState(() {
                      light1 = value;
                    });
                  },
                  ),
                  ]),
                  ),
            ]
                  ),
        ),
                
    ),
    
    );
  }
}
                
 