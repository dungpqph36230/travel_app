import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/screens/signIn.dart';
import 'package:travel_app/travelItems/travel_items.dart';

class TravelDetail extends StatefulWidget {
  const TravelDetail({super.key});

  @override
  State<TravelDetail> createState() => _TravelDetailState();
}

class _TravelDetailState extends State<TravelDetail> {
  final PageController _pageController = PageController();
  final OnboardingItems _controller = OnboardingItems();

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  void _nextPageAndNavigate() {
    if (_currentPage == _controller.items.length - 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SignIn()),
      );
    } else {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        onPageChanged: (index) => setState(() => _currentPage = index),
        controller: _pageController,
        itemCount: _controller.items.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  _controller.items[index].images,
                  width: 444,
                  height: 420,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 35,
                right: 10,
                child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignIn(),
                    ),
                  );
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFCAEAFF)
                  ),
                ),
              ),),
              Positioned(
                bottom: 30,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(27),
                  child: Column(
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: _controller.items[index].title,
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            decoration: TextDecoration.none,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: _controller.items[index].ripTextCha,
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                decoration: TextDecoration.none,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        _controller.items[index].ripText,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 58,
        decoration: const BoxDecoration(color: Colors.white),
        child: Center(
          child: SmoothPageIndicator(
            controller: _pageController,
            count: _controller.items.length,
            effect: ExpandingDotsEffect(
              dotWidth: 13,
              dotHeight: 7,
              radius: 16,
              dotColor: Colors.blue.shade200,
              activeDotColor: Colors.blue,
            ),
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 56,
            width: 335,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(33),
            ),
            child: TextButton(
              onPressed: _nextPageAndNavigate,
              child: Text(
                _currentPage == 0 ? 'Get Started' : 'Next',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 120),
        ],
      ),
    );
  }
}