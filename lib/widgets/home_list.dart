import 'package:flutter/material.dart';

class HomeListItem extends StatelessWidget {
  final String name;
  final VoidCallback onTap;

  const HomeListItem({
    super.key,
    required this.name,
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
        height: 40.0,
        width: 150.0,
        color: Colors.purpleAccent,
        child: Center(
          child: Text(name, style: const TextStyle(color: Colors.white)),
         
        ),
      ),
      ),
    );
  }
}