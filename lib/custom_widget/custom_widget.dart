import 'package:flutter/material.dart';
import 'package:ppbl2026/custom_widget/custom_card.dart';
import 'package:ppbl2026/custom_widget/custom_listview_card.dart';
import 'package:ppbl2026/custom_widget/socmed_button.dart';
import 'package:ppbl2026/custom_widget/status_badge.dart';

class CustomWidgetExample extends StatelessWidget {
  const CustomWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    // komponen / custom widget
    return Scaffold(
      appBar: AppBar(
        title: Text("Contoh custom widget"),
      ),
      body:  Column(children: [
        CustomInfoCard(
            title: "Coba ",
            icon: Icons.eighteen_up_rating
        ),
        StatusBadge(
            text: "Status Badge 1",
            color: Colors.amber,
            iconData: Icons.insert_emoticon_sharp,
        ),
        StatusBadge(
          text: "Contoh kedua",
          color: Colors.green,
          iconData: Icons.flight,
        ),
        StatusBadge(
          text: "Contoh ketiga",
          color: Colors.redAccent,
          iconData: Icons.traffic,
        ),
        CustomListviewCard(
            title: "Contoh listview Card",
            icon: Icons.eleven_mp_rounded,
            img: 'https://picsum.photos/250?image=9'),
        FollowButton(
            platform: "TikTok",
            onPressed: (){print("Hello Tiktok");}
        ),
        FollowButton(
            platform: "Youtube",
            onPressed: (){print("Hello Youtube");}
        )
      ],)
        ,
    );
  }
}
