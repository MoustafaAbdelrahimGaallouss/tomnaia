import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:tomnaia/Components/CustomTextField.dart';

String ?firstName ;
String ?lastName;             
class Changenamescreen extends StatelessWidget {
  Changenamescreen({super.key});

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

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
          "Change name",
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
            CustomTextField(
              controller: firstNameController,
              labelText: "First Name",
              //hintText:
            ),
            CustomTextField(
              controller: lastNameController,
              labelText: "Last Name",
              //hintText:
            ),
            MaterialButton(
                onPressed: () {
                    firstName = firstNameController.text;
                   lastName = lastNameController.text;
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


// import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;

  const CustomTextField({
    Key? key,
    required this.controller, required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("${labelText}",
        textAlign: TextAlign.left,
        style:  TextStyle(
          fontWeight:FontWeight.bold,
          fontSize: 20,
        ),),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 20),
              borderRadius: BorderRadius.circular(50)
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
          ),
        ),
      ],
    );
  }
}

