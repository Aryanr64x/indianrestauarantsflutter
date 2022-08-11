// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.only(left: 144, right: 144, top: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          Text(
            "Wanna connect with me ?",
            style: TextStyle(
                fontSize: 64,
                height: 0.9,
                color: Theme.of(context).primaryColor),
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Please Enter you name ..",
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Please Enter you name ..",
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Please Enter you name ..",
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Enter your message ..",
            ),
            maxLines: 4,
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.black),
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "OR",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 36.0,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Contact Me on Whatsapp @ 6290341107",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 28.0,
            ),
          ),
        ],
      ),
    );
  }
}
