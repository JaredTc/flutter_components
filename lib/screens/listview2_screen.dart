import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   final options = const['Megaman','GTA SA', 'HALO', 'R4'];
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const  Text('ListView 2')),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) =>  ListTile(
            title: Text(options [index]),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              final game = options[index];
              print(game);
            },
          ),
        separatorBuilder: (_, __ ) =>  const Divider(), 
        itemCount: options.length        
        )
      
    );
  }
}