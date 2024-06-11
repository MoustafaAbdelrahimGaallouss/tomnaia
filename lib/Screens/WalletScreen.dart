import 'package:flutter/material.dart';
import 'PaymentMathodScreen.dart';
class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F3F3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
              Center(
                child: const Text(
                  "Wallet",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.black,
          ),
          Container(
            height: 500,
            child: ListView(
              children: [
                PaymentMethod1(),
                PaymentMethod2()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PaymentMethod1 extends StatelessWidget {
  const PaymentMethod1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child:  Padding(
        padding: EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(Icons.attach_money_outlined,color: Colors.green,),
          title: Text(
            "Cash",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          trailing:GestureDetector(
            onTap: (){
               Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PaymentMathodScreen(),
              ),
            );
            },
            child: Icon(
              Icons.arrow_forward_ios,
              weight: 900,
              size: 20,
            
            ),
          ),
        ),
      ),
    );
  }
}


class PaymentMethod2 extends StatelessWidget {
  const PaymentMethod2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(Icons.credit_card_outlined,color: Colors.green,),
          title: Text(
            "Credit Al-ahly Bank",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            weight: 900,
            size: 20,
          ),
        ),
      ),
    );
  }
}

/*

*/