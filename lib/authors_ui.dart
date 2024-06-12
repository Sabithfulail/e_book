import 'package:flutter/material.dart';

class Authors extends StatelessWidget {

  final String authorImage;

  const Authors(this.authorImage, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 75,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill,
            image: AssetImage(authorImage),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(100.0))),
    );
  }
}
