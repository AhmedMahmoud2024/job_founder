import 'package:flutter/material.dart';

import '../helper/images.dart';

class StackedAvatar extends StatelessWidget {
  const StackedAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return     Stack(
                  children: [
                    
                     CircleAvatar(
                        radius: 30,
                        child:Image.asset(Images.personImage) ,
                      ),
                    
                    Positioned(
                      right: 0,
                      child: CircleAvatar(
                        radius: 10,
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ),
                  ]
                  );  
  }
  }