
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              Container(
                color: Colors.blue.shade100,
                child: const Center(child: Text('Welcome to Sidegig PH', style: TextStyle(fontSize: 24))),
              ),
              Container(
                color: Colors.blue.shade200,
                child: const Center(child: Text('Find Local Gigs Easily', style: TextStyle(fontSize: 24))),
              ),
              Container(
                color: Colors.blue.shade300,
                child: const Center(child: Text('Start Your Side Hustle Today', style: TextStyle(fontSize: 24))),
              ),
            ],
          ),
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: const WormEffect(dotColor: Colors.grey, activeDotColor: Colors.blue),
              ),
            ),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: onLastPage
                ? ElevatedButton(
                    onPressed: () {
                      // TODO: Navigate to Login/Home page later
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Onboarding Completed!'),
                      ));
                    },
                    child: const Text('Get Started'),
                  )
                : ElevatedButton(
                    onPressed: () {
                      _controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                    },
                    child: const Text('Next'),
                  ),
          ),
        ],
      ),
    );
  }
}
