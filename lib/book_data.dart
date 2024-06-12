import 'package:flutter/cupertino.dart';

class BookData extends StatelessWidget {
  final String bookName;
  final String imagePath;

  const BookData(this.bookName, this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 75,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(imagePath),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(15.0))),
        ),
        SizedBox(
          width: 50,
          height: 20,
          child: Text(bookName,
              style: const TextStyle(
                overflow: TextOverflow.fade,
              )),
        )
      ],
    );
  }
}
