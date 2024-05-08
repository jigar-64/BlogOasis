import 'package:bloasis/drawer.dart';
import 'package:bloasis/images.dart';
import 'package:bloasis/screens/aboutus.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      appBar: AppBar(
        title: Text("Blog Oasis"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Contact Us",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Image.asset(
                images.contactus,
                width: double.maxFinite,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "To get in touch please use the following contact details:\n",
                style: TextStyle(fontSize: 17),
              ),
              Text(
                "Blog Oasis",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              contactDefaultText(
                  "A-304 Suramya Complex\n201, Chanakyapuri Rd, Vishwas City 1,\nChanakyapuri  Ahmedabad, Gujarat 380060\n\n"),
              contactDefaultText("Phone no:- 6355501662,9067494846\n\n"),
              contactDefaultText("Email: blogoasis@gmail.com\n\n"),
              DefaultFooter()
            ],
          ),
        ),
      ),
    );
  }
}

Text contactDefaultText(txt) {
  return Text(
    txt,
    style: TextStyle(fontSize: 20),
  );
}
