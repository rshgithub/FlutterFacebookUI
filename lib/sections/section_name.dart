import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SectionName extends StatelessWidget {
  String? sectionName ;
  String? sectionButtonText;

  SectionName(this.sectionName , this.sectionButtonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(sectionName!, style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 20),),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(sectionButtonText!),
                style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 18, color:  Colors.blue,
                        fontWeight: FontWeight.normal,)
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.blue, size: 15,),
            ],
          ),
        ],
      ),
    );
  }
}
