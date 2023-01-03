import 'package:pandafinal/screens/dashboard_screen/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:pandafinal/utility/ui_constants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
               
        child: Column(children: [
          const SizedBox(height: 0),
          Image.asset("assets/images/Chat1.png"),
          const SizedBox(height: 150),
          
          Text(
            "Welcome to our \nPandaTalks",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .apply(bodyColor: Color.fromARGB(255, 255, 255, 255))
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          FittedBox(
            child: ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DashboardScreen(),
                ),
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 60,
                    color: Colors.white,
                  )
                ],
              ),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                primary: kImperialOrange,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
