import 'package:flutter/material.dart';

class SampleDemo extends StatefulWidget {
  const SampleDemo({super.key});

  @override
  State<SampleDemo> createState() => _SampleDemoState();
}

class _SampleDemoState extends State<SampleDemo> {
  String title = "MyTitle";
  bool isEditable = false;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          child: !isEditable
              ? Text(title)
              : TextFormField(
                  initialValue: title,
                  textInputAction: TextInputAction.done,
                  onFieldSubmitted: (value) {
                    setState(() {
                      isEditable = false;
                      title = value;
                    });
                  })),
      IconButton(
        icon: const Icon(Icons.edit),
        onPressed: () {
          setState(() {
            isEditable = true;
          });
        },
      )
    ]);
  }
}
