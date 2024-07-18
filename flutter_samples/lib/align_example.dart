import 'package:flutter/material.dart';

class AlignExample extends StatelessWidget {
  const AlignExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Align(
                widthFactor: 0.5,
                child: Container(
                  width: 60,
                  height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    image: DecorationImage(image: AssetImage('assets/images/face$index.jpg')),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
