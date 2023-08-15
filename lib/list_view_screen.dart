import 'package:demo_gdsc/models/card_data.dart';
import 'package:demo_gdsc/widgets/heading_Section.dart';
import 'package:demo_gdsc/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  List<CardData> cardData = [
    CardData(
        image: 'assets/images/phone.jpeg',
        message: 'Hi ayush this side',
        title: 'Hello '),
    CardData(
        image: 'assets/images/phone.jpeg',
        message: 'Hi ayush  side',
        title: 'Hello '),
    CardData(
        image: 'assets/images/download.png',
        message: 'Hi ayush t side',
        title: 'Hello 2'),
    CardData(
        image: 'assets/images/phone.jpeg',
        message: 'Hi ayush this side',
        title: 'Hello 3 ')
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeadingSection(),
            Expanded(
              flex: 5,
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomCard(
                    cardData: cardData[index],
                  ),
                ),
                itemCount: cardData.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
