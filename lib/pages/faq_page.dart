import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: Text('FAQ'),
          ),
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 16,
              ),
              onPressed: () {},
              splashRadius: 30,
            ),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          elevation: 0,
        ),
      body: Center(
        child: Text('FAQs'),
      )
    );
  }
}