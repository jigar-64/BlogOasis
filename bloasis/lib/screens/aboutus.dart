import 'package:bloasis/colors.dart';
import 'package:bloasis/drawer.dart';
import 'package:bloasis/images.dart';
import 'package:flutter/material.dart';

import '../url.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      appBar: AppBar(
        title: Text("Blog Oasis"),
        centerTitle: false,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "About Us",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                images.blogging,
                fit: BoxFit.fitWidth,
              ),
              Text(
                "\nWelcome to BlogOasis!\n\nAt BlogOasis, we are passionate about sharing knowledge, insights, and inspiration with our readers. Our platform is dedicated to providing high-quality, engaging, and informative content on a wide range of topics. Whether you're a seasoned expert or a curious learner, our blog is the perfect destination to satisfy your intellectual cravings.\n\nWho We Are:\n\nWe are a diverse team of writers, researchers, and enthusiasts who come together to create compelling and thought-provoking articles. Our experts hail from various fields, ensuring that our content is well-researched, accurate, and up-to-date. With a shared commitment to spreading knowledge, we endeavor to bring you the latest trends, in-depth analyses, and valuable insights across diverse subject areas.\n\nOur Mission:\n\nOur mission is to be your go-to source for informative and engaging content that entertains, educates, and empowers. We believe in the power of words to inspire change and spark meaningful conversations. Through our blog, we aim to foster a community of like-minded individuals who are curious, open-minded, and eager to learn.\n\nWhat We Offer:\n\n- Informative Articles: Dive into a plethora of articles covering a wide spectrum of topics, from science and technology to arts and culture. Our articles are designed to cater to both casual readers and experts, ensuring that everyone finds something intriguing and valuable.\n- In-Depth Analysis: Gain a deeper understanding of complex subjects through our in-depth analyses. We break down intricate concepts, providing you with a comprehensive view that goes beyond the surface.\n- Inspiring Stories: Explore inspiring stories of individuals who have made a positive impact on the world. These stories are bound to motivate and uplift your spirits.\n- Practical Tips: Looking for practical advice? Our blog offers actionable tips and step-by-step guides that you can apply in your daily life to enhance your skills and knowledge.\n\nJoin Our Community:\n\nWe invite you to become a part of our growing community of readers and contributors. Engage with our content by sharing your thoughts in the comments section, participating in discussions, and sharing articles that resonate with you. If you're a passionate writer with a unique perspective, consider becoming a guest contributor and sharing your insights with our audience.\n\nStay Connected:\n\nStay connected with us through our social media channels to receive updates on the latest articles, upcoming events, and special features. Subscribe to our newsletter for a curated selection of the month's best content delivered directly to your inbox.\nThank you for choosing [Your Blogging Website Name] as your source of inspiration and knowledge. We look forward to embarking on this journey of discovery with you!\nSincerely,\nThe BlogOasis Team",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "\nSocial Media\n",
                style: TextStyle(color: Colors.blueGrey),
              ),
              DefaultFooter()
            ],
          ),
        ),
      ),
    );
  }
}

Container logoContainer(img) {
  return Container(
    padding: EdgeInsets.all(7),
    height: 60,
    width: 60,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(50), boxShadow: [
      BoxShadow(blurStyle: BlurStyle.outer, blurRadius: 2, color: Colors.black)
    ]),
    child: Image.asset(
      img,
      fit: BoxFit.fitHeight,
    ),
  );
}

class DefaultFooter extends StatelessWidget {
  const DefaultFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          spacing: 20,
          runSpacing: 20,
          direction:
              axisDirectionToAxis(flipAxisDirection(AxisDirection.right)),
          children: [
            InkWell(
                onTap: launchWebsiteUrl, child: logoContainer(images.google)),
            InkWell(onTap: launchMailUrl, child: logoContainer(images.gmail)),
            InkWell(
                onTap: launchInstagramUrl,
                child: logoContainer(images.instagram)),
            InkWell(
                onTap: launchFaceBookUrl,
                child: logoContainer(images.facebook)),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height * 0.25,
          width: double.maxFinite,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [AppColors.primaryColor1, AppColors.primaryColor2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: Column(
            children: [
              Image.asset(
                images.logo,
                width: 250,
              ),
              Divider(
                color: AppColors.logoColor2,
                indent: MediaQuery.of(context).size.width * 0.2,
                endIndent: MediaQuery.of(context).size.width * 0.2,
                thickness: 1,
                height: 3,
              ),
              Text(
                "READ,REFLECT,REVIVE",
                style: TextStyle(color: AppColors.logoColor2, fontSize: 20),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  "We provide you with the latest blogs from each and every topics around the world",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Contact us:"),
                  TextButton(
                      onPressed: launchMailUrl,
                      child: Text("blogoasis@gmail.com"))
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 50,
          color: Colors.black,
          alignment: Alignment.center,
          child: Text(
            "Copyright 2017-2019.All Rights Reserved!\n Design by Jigar Prajapati",
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
