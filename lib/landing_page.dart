import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/responsive_widget.dart';
import 'dart:js' as js;

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Opacity(
              opacity: 1.0,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                                    "web/assets/images/laptop.jpg",
                  // "https://cdn.pixabay.com/photo/2016/06/25/12/52/laptop-1478822_1280.jpg"
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Base container of all the content, images and logos that we are using.
            Container(
              color: Colors.grey.withOpacity(0.4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Landing page logo.
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Container(
                              height: ResponsiveWidget.isSmallScreen(context)
                                  ? 100
                                  : 150,
                              child: CircleAvatar(
                                radius: 90,
                                backgroundImage: AssetImage(
                                  // Replace with your landing page logo here.
                                  "web/assets/images/img_main.jpg",
                                ),
                              )),
                        ),
                        // Landing page website title.
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: SelectableText(
                            // Replace with your landing page website title.
                            "Harsh Bangari Rawat",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                            ),
                          ),
                        ),
                        // Landing page description.
                        Container(
                          width: ResponsiveWidget.isSmallScreen(context)
                              ? MediaQuery.of(context).size.width * 0.80
                              : MediaQuery.of(context).size.width * 0.50,
                          padding: EdgeInsets.only(top: 8),
                          child: SelectableText(
                            // Replace with your business or personal website description.
                            "Developer by choice. Seeking a collaborative community to develop enchanting apps.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: SelectableText(
                            "#Android #Python #Flutter #Node #Unity",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 32),
                          child: Text(
                            "Connect with me",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        // Change the web URLs with your own social media accounts.
                        Container(
                          width: MediaQuery.of(context).size.width * 0.80,
                          margin: EdgeInsets.only(top: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 48,
                                width: 48,
                                child: FlatButton(
                                  onPressed: () {
                                    _launchUrl(
                                      "shorturl.at/bgy04",
                                    );
                                  },
                                  child: Image.asset(
                                    "web/assets/images/social_facebook.png",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                height: 48,
                                width: 48,
                                child: FlatButton(
                                  onPressed: () {
                                    _launchUrl(
                                      "shorturl.at/bgy04",
                                    );
                                  },
                                  child: Image.asset(
                                    "web/assets/images/social_facebook_group.png",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                height: 48,
                                width: 48,
                                child: FlatButton(
                                  onPressed: () {
                                    _launchUrl(
                                      "shorturl.at/citI1",
                                    );
                                  },
                                  child: Image.asset(
                                    "web/assets/images/social_twitter.png",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                height: 48,
                                width: 48,
                                child: FlatButton(
                                  onPressed: () {
                                    _launchUrl(
                                      "shorturl.at/myAL3",
                                    );
                                  },
                                  child: Image.asset(
                                    "web/assets/images/social_instagram.png",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 32),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  "Inspired by",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                width: ResponsiveWidget.isSmallScreen(context)
                                    ? 150
                                    : 200,
                                child: Image.asset(
                                  "web/assets/images/logo_google_developers.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Opens a website in a new tab.
  void _launchUrl(String url) {
    js.context.callMethod("open", [url]);
  }
}
