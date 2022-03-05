import 'package:flutter/material.dart';

class NetworkScreen extends StatefulWidget {
  const NetworkScreen({Key? key}) : super(key: key);

  @override
  State<NetworkScreen> createState() => _NetworkScreenState();
}

class _NetworkScreenState extends State<NetworkScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/icon/linkedin-word.png',
                scale: 50,
              ),
              const SizedBox(height: 20),
              Text('Network Screen',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
