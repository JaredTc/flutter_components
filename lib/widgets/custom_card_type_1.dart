import 'package:components/theme/app_theme.dart';
import 'package:flutter/material.dart';
class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
         const  ListTile(
            leading:  Icon(Icons.photo_album_outlined, color: AppTheme.primary,),
            title:  Text('Soy un titulo'),
            subtitle: Text('Consequat irure amet ut nostrud sit nisi cillum dolore voluptate eiusmod aute labore aliqua commodo. Reprehenderit nulla exercitation laborum culpa aliquip cillum est officia aute. Lorem eu velit eu dolor ea veniam. Aliquip tempor sint aliqua magna reprehenderit sint.'),
          ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: 
              (){}, child: Text('Cancel'),
              ),
              TextButton(onPressed: 
              (){}, child: Text('Ok')),
            ],
          ),
        ),

        ],

      ),
    );
  }
}