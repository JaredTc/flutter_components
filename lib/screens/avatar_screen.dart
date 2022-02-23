import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Rana Kuaker'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: const Text('RQ'),
            ),
          )
        ],
      ),
      body: Center(
         child: CircleAvatar(
           maxRadius: 110,
           backgroundImage: NetworkImage('https://www.ngenespanol.com/wp-content/uploads/2018/08/El-ejemplar-parecido-a-la-rana-Ren%C3%A9-770x413.jpg'),
         ),
      ),
    );
  }
}