import 'package:cooking_onboarding_screen_flutter/constants.dart';
import 'package:flutter/material.dart';

Widget splashScreen(String imagePath, String title, String desc,
    PageController controller, bool isLast, BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
          // Make the Image darker
          colorFilter: ColorFilter.mode(Colors.black87, BlendMode.luminosity)),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: whiteBoxStyle,
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
          child: Column(
            children: [
              Text(
                title,
                style: titleStyle,
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 12.0),
              Text(
                desc,
                style: descStyle,
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RawMaterialButton(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                    fillColor: Colors.orange,
                    shape: const StadiumBorder(),
                    onPressed: () {},
                    child: Text('Skip Now'),
                  ),
                  RawMaterialButton(
                    onPressed: () {},
                    fillColor: Colors.green,
                    shape: const StadiumBorder(),
                    child: Text('GET STARTED'),
                  ),
                  RawMaterialButton(
                    onPressed: () {},
                    fillColor: Colors.red,
                    shape: const StadiumBorder(),
                    child: Text('Next'),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
