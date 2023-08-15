import 'package:demo_gdsc/models/card_data.dart';
import 'package:demo_gdsc/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 150,
            ),
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomCard(
                cardData: CardData(
                    image: 'assets/images/phone.jpeg',
                    message: 'message',
                    title: 'title'),
              ),
            ),
            itemCount: 10,
          ),
        ],
      ),
    );
  }
}
