
import 'package:flutter/material.dart';
import 'package:loginstem/model/profile.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  final formKey =GlobalKey<FormState>();
  Profile profile = Profile();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("ສ້າງບັນຊີຜູ້ໃຊ້"), ),
body: Container(
  child:Padding(
    padding: const EdgeInsets.all(20.0),
    child: Form(
      key: formKey ,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,//ໃຫ້ຕົວໜັງສືຢູ່ທາງຊາຍ
          children: [
            Text("ອີເມວ",style:TextStyle(fontSize: 20)),
            TextFormField(
              keyboardType: TextInputType.emailAddress,//ໃຊ້@
              // onSaved: (String email){
              //   Profile.email = email;
              // },
            ),

            SizedBox(height: 15,),//ກັນບໍ່ໃຫ້ຕີດກັນ
            Text("ລະຫັດ",style:TextStyle(fontSize: 20),),
            TextFormField(
              obscureText: true,//ປີດບັນຂໍມູນ
              // onSaved: (String password){
              //   profile.password=password;
              // },
            ),
            SizedBox(height: 15,),
            Text("ເບີ້",style:TextStyle(fontSize: 20),),
            TextFormField(),
            SizedBox(height: 15,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
               
                child: Text("ລົງທະບຽນ",style: TextStyle(fontSize: 20),),
                 onPressed: () { 
                  formKey.currentState?.save();
                  print("email = ${profile.email} password = ${profile.password}");
                  formKey.currentState?.reset();
                  },
                ),
            )
          ],
        ),
      )
      ),
  ) ,
),
      );
      
  }
}