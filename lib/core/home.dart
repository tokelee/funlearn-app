import 'package:flutter/material.dart';
import 'package:nizam_test_app/games/fraction_match.dart';
import 'package:nizam_test_app/widgets/home_list.dart';

class ChooseGameScreen extends StatelessWidget {
  const ChooseGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Choose a game", style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
                HomeListItem(name: "Fraction Match", onTap: () => Navigator.push(context, MaterialPageRoute<void>(builder: (context) => const FractionGameHome())),),
                HomeListItem(name: "Practise", onTap: () => {},)
              ],
            ),
          ),
          )
        ),
    );
  }
}
