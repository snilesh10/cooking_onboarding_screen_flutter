import 'package:flutter/material.dart';
import 'package:cooking_onboarding_screen_flutter/widgets/onboarding_page_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cooking Onboarding',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CookingOnboarding(),
    );
  }
}

class CookingOnboarding extends StatefulWidget {
  const CookingOnboarding({Key? key}) : super(key: key);

  @override
  _CookingOnboardingState createState() => _CookingOnboardingState();
}

class _CookingOnboardingState extends State<CookingOnboarding> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: PageView(
          controller: _controller,
          children: [
            splashScreen(
                'assets/images/image-1.jpg',
                'Hmm, Healthy food',
                'Deserunt incididunt proident id elit ipsum id dolor. Elit magna dolor deserunt eiusmod duis Lorem eiusmod occaecat dolore.',
                _controller,
                false,
                context),
            splashScreen(
                'assets/images/image-2.jpg',
                'Hmm, Healthy food',
                'Deserunt incididunt proident id elit ipsum id dolor. Elit magna dolor deserunt eiusmod duis Lorem eiusmod occaecat dolore.',
                _controller,
                false,
                context),
            splashScreen(
                'assets/images/image-3.jpg',
                'Hmm, Healthy food',
                'Deserunt incididunt proident id elit ipsum id dolor. Elit magna dolor deserunt eiusmod duis Lorem eiusmod occaecat dolore.',
                _controller,
                false,
                context),
            splashScreen(
                'assets/images/image-4.jpg',
                'Hmm, Healthy food',
                'Deserunt incididunt proident id elit ipsum id dolor. Elit magna dolor deserunt eiusmod duis Lorem eiusmod occaecat dolore.',
                _controller,
                false,
                context),
          ],
        ));
  }
}
