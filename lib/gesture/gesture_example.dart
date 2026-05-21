import 'package:flutter/material.dart';

class GestureExample extends StatefulWidget {
  const GestureExample({super.key});

  @override
  State<GestureExample> createState() => _GestureExampleState();
}

class _GestureExampleState extends State<GestureExample> {
  bool showTrailing = false;
  int tappedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gesture Example"),),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            clipBehavior: Clip.antiAlias,
            child: GestureDetector(

              onVerticalDragEnd: (detail){
                setState(() {
                  tappedIndex = index;
                });
              },
              onLongPress: (){
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.vertical(top: Radius.circular(32))),
                    context: context,
                    builder: (BuildContext context) => Container());
              },
              child: Column(
                children: [
                  Image.network(
                    'https://picsum.photos/id/${index + 10}/600/400',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.image_not_supported),
                  ),
                  ListTile(


                      title: Text("Photo ${index + 1}", style: Theme.of(context).textTheme.bodySmall),
                      subtitle: const Text("Source: Flutter CDN Example"),
                      trailing:  Visibility(
                        visible: tappedIndex == index,
                          child: Icon(
                            Icons.delete,
                            color: Colors.pink,
                          )
                      )



                  )
                ],
              ),
            )

            ,


          );
        },
      ),
    );
  }
}
