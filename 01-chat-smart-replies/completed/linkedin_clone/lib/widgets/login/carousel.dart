import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  // Carousel index
  int _current = 0;

  // Carousel Data
  List<String> imageList =
      List.generate(3, (index) => 'assets/image/login-assets/${index + 1}.png');
  List<Image> imageSliders = List<Image>.generate(
      3,
      (index) => Image.asset(
            'assets/image/login-assets/${index + 1}.png',
            height: 150,
          ));
  List<String> descriptionList = [
    'Find and land your next job',
    'Build your network on the go',
    'Stay ahead with curated content for your career'
  ];

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.black;

    return SizedBox(
      height: 400,
      child: Column(
        children: [
          CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
                viewportFraction: 1,
                height: 300,
                autoPlay: true,
                initialPage: 0,
                onPageChanged: (index, reason) {
                  setState(() => _current = index);
                }),
          ),
          Text(
            descriptionList[_current],
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageList
                .asMap()
                .entries
                .map(
                  (entry) => Container(
                    width: 12.0,
                    height: 12.0,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: color),
                      color: color.withOpacity(
                        _current == entry.key ? 1 : 0,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
