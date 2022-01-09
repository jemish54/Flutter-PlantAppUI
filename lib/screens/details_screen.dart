import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app_ui/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Row(
              children: [
                SafeArea(
                  child: Container(
                    width: size.width * 0.3,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.topLeft,
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.arrow_back)),
                        ),
                        DetailButton(
                          icon: "sun.svg",
                        ),
                        DetailButton(
                          icon: "icon_2.svg",
                        ),
                        DetailButton(
                          icon: "icon_3.svg",
                        ),
                        DetailButton(
                          icon: "icon_4.svg",
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.75,
                  width: size.width * 0.7,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/img.png"),
                          fit: BoxFit.cover,
                          alignment: Alignment.centerLeft),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: kPrimaryColor.withOpacity(0.25),
                            offset: Offset(0, 10),
                            blurRadius: 60)
                      ]),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Angelica",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(color: Colors.white12, offset: Offset(-1, 1))
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$440",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Russia",
                    style: TextStyle(
                        fontSize: 18,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Buy Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(30))),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailButton extends StatelessWidget {
  final String icon;

  const DetailButton({
    Key? key,
    this.icon = "sun.svg",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Container(
            height: 62,
            width: 62,
            decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 22,
                      color: kPrimaryColor.withOpacity(0.22)),
                  BoxShadow(
                    offset: Offset(-15, -15),
                    blurRadius: 20,
                    color: Colors.white,
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset("assets/icons/$icon"),
            ),
          )),
    );
  }
}
