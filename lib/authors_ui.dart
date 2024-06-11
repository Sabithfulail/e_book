import 'package:flutter/material.dart';

class Authors extends StatelessWidget {

  late String authorImage;

  Authors(this.authorImage);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 75,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill,
            image: AssetImage('$authorImage'),
          ),
          borderRadius: BorderRadius.all(Radius.circular(100.0))),
    );
  }
}
