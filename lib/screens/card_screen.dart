import 'package:components/widgets/custom_card_type_2.dart';
import 'package:flutter/material.dart';
import 'package:components/widgets/widgets.dart';


class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children:  [
          
          CustomCardType2(imageUrl: 'https://images.unsplash.com/photo-1641400504445-99dc922bbe63?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80', 
          ),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://images.unsplash.com/photo-1639402479778-bcb2d2fbb69e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8Ym84alFLVGFFMFl8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60', 
          ),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://images.unsplash.com/photo-1641040081439-82d9e5961e42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDUyfGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60', 
          text: 'Un hernoso paisaje'),
          SizedBox(height: 10),
          SizedBox(height: 10),
        ],

      ),
    );
  }
}
