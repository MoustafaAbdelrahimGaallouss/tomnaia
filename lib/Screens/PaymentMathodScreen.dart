import 'package:flutter/material.dart';

String? name;
String? Cardnumber;
String? ExpDate;
String? CVV;

class PaymentMathodScreen extends StatelessWidget {
  PaymentMathodScreen({super.key});
  final TextEditingController NameController = TextEditingController();
  final TextEditingController ExpDateController = TextEditingController();
  final TextEditingController CVVController = TextEditingController();
  final TextEditingController CardnumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Text(
                "Wallet",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Text(
              "Payment Method",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            CustomInput(
              controller: NameController,
              labelText: 'Name',
            ),
            CustomInput(
              controller: CardnumberController,
              labelText: 'Cardnumber',
            ),
             CustomInput(
              controller: ExpDateController,
              labelText: 'Exp Date',
            ),
            CustomInput(
              controller: CVVController,
              labelText: 'CVV',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                    onPressed: () {
                     name=NameController.text;
                     Cardnumber=CardnumberController.text;
                     ExpDate=ExpDateController.text;
                     CVV=CVVController.text;
                     
                
                    },
                    color: Color(0xff043860),
                    minWidth: 100,
                    height: 50,
                    child: Text(
                      "Accept",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                     MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: Color(0xffF3F3F3),
                    minWidth: 100,
                    height: 50,
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomInput extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;

  const CustomInput({
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
          // obscureText: hide,
          decoration: InputDecoration(
            suffix: IconButton(
              onPressed: () {
                // hide=false;
              },
              icon: Icon(
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


