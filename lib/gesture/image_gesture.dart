import 'package:flutter/material.dart';

class ImageGesture extends StatefulWidget {
  const ImageGesture({super.key});

  @override
  State<ImageGesture> createState() => _ImageGestureState();
}

class _ImageGestureState extends State<ImageGesture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image zoom"),),
      body: GestureDetector(

        onLongPress: (){
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.vertical(top: Radius.circular(32))),
              context: context,
              builder: (BuildContext context) => Container());
        },
        onDoubleTap: (){
          final snackBar = SnackBar(
            content: const Text('Image liked'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Image(
          image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
        ),
      ),
    );
  }
}
