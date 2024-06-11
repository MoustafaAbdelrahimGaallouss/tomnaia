import 'package:flutter/material.dart';
import 'package:tomnaia/Components/profilPhoto.dart';
import 'package:tomnaia/Screens/ChangeNameScreen.dart';
import 'package:tomnaia/Screens/ChangePasswordScreen.dart';
import 'package:tomnaia/Screens/ChangePhoneScreen.dart';
// import 'package:tomnaia/models/model1.dart';



class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tomnaia',
              style: TextStyle(
                fontFamily: 'Sail',
                fontSize: 30,
                color: Color.fromARGB(255, 38, 37, 136),
              ),
            ),
          ],
        ),
        actions: const [ProfilePhoto()],
      ),
      body:  Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Settings',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            SettingTile(
              title: 'Change Name',
              subtitle: 'Sero Ahmed',
              titleStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              toWhere: Changenamescreen(),
            ),
            SettingTile(
              title: 'Change Password',
              subtitle: '*******',
              titleStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              toWhere: ChangePassWordScreen(),
            ),
            SettingTile(
              title: 'Change Phone Number',
              subtitle: '+2011111111',
              titleStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
               toWhere: ChangePhoneNumberscreen(),
              
            ),
            
            // SettingTile(
            //   title: 'Change Account Type',
            //   subtitle: 'Passenger',
            //   titleStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            // ),
            // SettingTile(
            //   title: 'Delete The account',
            //   subtitle: '',
            //   titleStyle: TextStyle(
            //       color: Colors.red, fontWeight: FontWeight.w400, fontSize: 18),
            // ),
          ],
        ),
      ),

    );
  }
}


/////////////////
class SettingTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final TextStyle? titleStyle;
  final  Widget toWhere;

  const SettingTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.titleStyle,
   required  this.toWhere,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(
            title,
            style: titleStyle,
          ),
          subtitle: subtitle.isNotEmpty ? Text(subtitle) : null,
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => toWhere,
              ),
            );
          },
        ),
      ),
    );
  }
}
