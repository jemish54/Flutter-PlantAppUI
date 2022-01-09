import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app_ui/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        foregroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
        ),
      ),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchField(size: size),
          TitleWithMoreButton(
            text: "Recommended",
            onMorePress: () {},
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                PlantCard(
                  size: size,
                  image: "image_1.png",
                ),
                PlantCard(
                  size: size,
                  image: "image_2.png",
                ),
                PlantCard(
                  size: size,
                  image: "image_3.png",
                ),
              ],
            ),
          ),
          SizedBox(height: kDefaultPadding),
          TitleWithMoreButton(text: "Featured", onMorePress: () {}),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PlantCard(
                    size: size,
                    image: "bottom_img_1.png",
                    width: 280,
                  ),
                  PlantCard(
                    size: size,
                    image: "bottom_img_1.png",
                    width: 280,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

class PlantCard extends StatelessWidget {
  const PlantCard({
    Key? key,
    required this.size,
    required this.image,
    this.width = 150,
  }) : super(key: key);

  final Size size;
  final String image;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 10.0),
      child: Card(
        elevation: 8.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          width: width,
          child: Column(children: [
            Image(
              image: AssetImage("assets/images/$image"),
              fit: BoxFit.fitWidth,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "SAMANTHA",
                      ),
                      Spacer(),
                      Text(
                        "\$400",
                        style: TextStyle(
                            color: kPrimaryColor, fontWeight: FontWeight.w900),
                      )
                    ],
                  ),
                  SizedBox(height: 3.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "RUSSIA",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                          color: kPrimaryColor),
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class TitleWithMoreButton extends StatelessWidget {
  final String text;
  final Function onMorePress;

  const TitleWithMoreButton(
      {Key? key, required this.text, required this.onMorePress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          Container(
            height: 24,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: kDefaultPadding / 4),
                  child: Text(
                    text,
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: const EdgeInsets.only(right: kDefaultPadding / 4),
                    height: 7,
                    color: kPrimaryColor.withOpacity(0.2),
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          MaterialButton(
            onPressed: () {},
            child: Text("More"),
            textColor: Colors.white,
            color: kPrimaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          )
        ],
      ),
    );
  }
}

class HeaderWithSearchField extends StatelessWidget {
  const HeaderWithSearchField({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36.0),
                bottomRight: Radius.circular(36.0),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Hi James !",
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                Image.asset("assets/images/logo.png")
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              alignment: Alignment.center,
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: kPrimaryColor.withOpacity(0.23),
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                    )
                  ]),
              child: Row(children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: kPrimaryColor.withOpacity(0.5),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                SvgPicture.asset("assets/icons/search.svg"),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
