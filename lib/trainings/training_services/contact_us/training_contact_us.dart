import 'package:flutter/material.dart';
import 'package:uplink_tech_hub/main_folder/shared/loading.dart';
import 'package:uplink_tech_hub/shared/constant.dart';
import 'package:uplink_tech_hub/trainings/section_title.dart';
import 'package:uplink_tech_hub/trainings/training_services/contact_us/social_card.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // this height only for demo
      // height: 500,

      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        // image: DecorationImage(
        //   fit: BoxFit.cover,
        //   image: AssetImage("assets/images/bg_img_2.png"),
        // ),
      ),
      child: Column(
        children: [
          SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: SectionTitle(
              title: "Contact Us",
              subTitle: "For Project inquiry and information",
              color: Color(0xFF07E24A),
            ),
          ),
          ContactBox(),
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.only(top: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocalCard(
                color: Color(0xFFD9FFFC),
                iconSrc: "assets/images/skype.png",
                name: 'Skype--',
                press: () {},
              ),
              SocalCard(
                color: Color(0xFFE4FFC7),
                iconSrc: "assets/images/whatsapp.png",
                name: 'Whatsapp',
                press: () async {
                  var phone = "+23408097352014";
                  var whatsappUrl = "whatsapp://send?phone=$phone";
                  await canLaunch(whatsappUrl)
                      ? launch(whatsappUrl)
                      : print(
                          "open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
                },
              ),
              SocalCard(
                color: Color(0xFFE8F0F9),
                iconSrc: "assets/images/messanger.png",
                name: 'Facebook',
                press: () {
                  var messengerUrl='m.me/timsolu';
                  launch("https://$messengerUrl");
                },
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding),
          ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  const ContactForm({
    Key key,
  }) : super(key: key);
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  String subject = '';
  String request = '';
  String error = '';
  bool loading = false;
  bool sentToEmial = false;

  final _formkey = GlobalKey<FormState>();

  _launchURL(String toMailId, String subject, String body) async {
    var url = 'mailto:$toMailId?subject=$subject&body=$body';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? ResultMessage()
        : new Form(
            key: _formkey,
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding,
              children: [
                SizedBox(
                  width: 470,
                  child: TextFormField(
                    validator: (val) =>
                        val.isEmpty ? 'Subject cannot be empty' : null,
                    onChanged: (val) {
                      setState(() => subject = val);
                    },
                    decoration: InputDecoration(
                      labelText: "Subject",
                      hintText: "Write the subject of your request",
                    ),
                  ),
                ),
                SizedBox(
                  // height: 300,
                  // TextField by default cover the height, i tryed to fix this problem but i cant
                  child: TextFormField(
                    // minLines: 5,
                    // maxLines: 7,
                    validator: (val) =>
                        val.isEmpty ? 'Request cannot be empty' : null,
                    onChanged: (val) {
                      setState(() => request = val);
                    },
                    decoration: InputDecoration(
                      labelText: "Request",
                      hintText: "Write some request",
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: FittedBox(
                    child: DefaultButton(
                      imageSrc: "assets/images/contact_icon.png",
                      text: "Contact Me!",
                      press: () async {
                        // setState(() {
                        //   loading=true;
                        // });
                        if (_formkey.currentState.validate()) {
                          // Navigator.pop(context);
                          _launchURL('info@uplinx.com.ng', subject, request);
                          setState(() => {
                                loading = true,
                                request = '',
                                subject = '',
                              });
                        } else {
                          setState(() {
                            loading = false;
                          });
                        }
                      },
                    ),
                  ),
                )
              ],
            ),
          );
  }
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.imageSrc,
    this.text,
    this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding,
        horizontal: kDefaultPadding * 2.5,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      color: Color(0xFFE8F0F9),
      onPressed: press,
      child: Row(
        children: [
          Image.asset(imageSrc, height: 40),
          SizedBox(width: kDefaultPadding),
          Text(text),
        ],
      ),
    );
  }
}

class ResultMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        spacing: kDefaultPadding,
        runSpacing: kDefaultPadding,
        children: [
          Center(
            child: FittedBox(
              child: Container(
                height: 200,
                child: Text(
                    " Message request has been redirected to your email, \nplease veify and send"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
