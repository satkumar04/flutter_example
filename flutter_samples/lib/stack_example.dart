import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: 350,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset(
              'assets/images/user.jpg',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                color: Colors.black.withOpacity(0.3),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Leena Devis',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Text(
                      'Professional fashion designer',
                      style: TextStyle(fontSize: 13, color: Colors.white70),
                    ),
                  ],
                ),
              ),
            ),
           const Positioned(
            bottom: -24,
            right: 16,
            child: CircleAvatar(
            
            backgroundColor: Colors.black,
            radius:  24,
            child: Icon(Icons.favorite,
            color: Colors.white,),
           ))
          ],
        ),
      ),
    );
  }
}
