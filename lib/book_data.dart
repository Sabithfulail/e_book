import 'package:flutter/cupertino.dart';

class BookData extends StatelessWidget {

  final String bookName;
  final String imagePath;

  BookData(this.bookName,this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 75,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('$imagePath'),
                ),
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
          ),
          Container(
            width: 50,
            height: 20,
            child: Text('$bookName',style: TextStyle(overflow: TextOverflow.fade,)),
          )
        ],
      ),
    );
  }
}
