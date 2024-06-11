import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:tomnaia/Components/CustomTextField.dart';

String? NewPassWord;
String? lastName;

class ChangePassWordScreen extends StatelessWidget {
  ChangePassWordScreen({super.key});

  final TextEditingController NewPassWordController = TextEditingController();
  final TextEditingController OldPassWorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          "Change Password",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomTextPassWord(
              controller: NewPassWordController,
              labelText: "New Password",
              //hintText:
            ),
            CustomTextPassWord(
              controller: OldPassWorController,
              labelText: "Confirm  New Password",
              //hintText:
            ),
            CustomTextPassWord(
              controller: OldPassWorController,
              labelText: "Old Password",
              //hintText:
            ),
            MaterialButton(
                onPressed: () {
                  NewPassWord = NewPassWordController.text;
                  lastName = OldPassWorController.text;
                },
                color: Color(0xff043860),
                minWidth: 400,
                height: 50,
                child: Text(
                  "Accept",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}

 bool hide=true;
class CustomTextPassWord extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;

  const CustomTextPassWord({
    Key? key,
    required this.controller,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "${labelText}",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        TextField(
          controller: controller,
           obscureText: hide,
          decoration: InputDecoration(
            suffix: IconButton(
              onPressed: (){
               hide=false;
              },
              icon:  Icon(
                  Icons.remove_red_eye,
                  color: Colors.black,
                ),
            ),
            border: OutlineInputBorder(
                borderSide: const BorderSide(width: 20),
                borderRadius: BorderRadius.circular(50)),
            contentPadding:
                EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
          ),
        ),
      ],
    );
  }
}
