import 'package:flutter/material.dart';
import 'package:loginstem/screen/feed.dart';
import 'package:loginstem/screen/indextable.dart';
import 'package:loginstem/screen/login.dart';
import 'package:loginstem/screen/register.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register/login"),
      ),
      body: Padding(
        padding:
            const EdgeInsets.fromLTRB(15, 200, 15, 0), //ກໍານົດທີດທາງຂອງປູ່່ມ
        child: SingleChildScrollView(
          //ປອງກັນການເກີດບັນທອນໂອເວີໂຟ
          child: Column(
            children: [
              Image.asset("assets/images/logo.png"),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, //ການລີງໄປຫນ້າອື່ນ
                        MaterialPageRoute(builder: (context) {
                      return Registerscreen();
                    }));
                  },
                  icon: Icon(Icons.add),
                  label:
                      Text("ສ້າງບັນຊີຜູ້ໃຊ້", style: TextStyle(fontSize: 20)),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(//ການລີງໄປຫນ້າອື່ນ
                        builder: (context) {
                      return Loginscreen();
                    }));
                  },
                  icon: Icon(Icons.login),
                  label: Text("ເຂົ້າສູ້ລະບົບ", style: TextStyle(fontSize: 20)),
                ),
                
              ),
               SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(//ການລີງໄປຫນ້າອື່ນ
                        builder: (context) {
                      return Feed();
                    }));
                  },
                  icon: Icon(Icons.login),
                  label: Text("ເຂົ້າສູ້ລະບົບ", style: TextStyle(fontSize: 20)),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(//ການລີງໄປຫນ້າອື່ນ
                        builder: (context) {
                      return Index();
                    }));
                  },
                  icon: Icon(Icons.login),
                  label: Text("ເຂົ້າສູ້ລະບົບ", style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
