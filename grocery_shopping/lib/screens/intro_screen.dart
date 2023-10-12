import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  // declare controller for video state
  late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.asset(
        "../../assets/videos/intro.mp4") // setting the controller to the video
      ..initialize().then((_) {
        // initializing the video
        _controller.play(); // setting the video to play
        _controller.setLooping(true); // setting the video to looping mode
        setState(() {}); // setting our state.
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            // this widget takes up the available space
            // child: FittedBox(
            //   // takes up all the available space of the parent widget
            //   fit: BoxFit.cover,
            //   child: SizedBox(
            //     width: _controller.value.size.width,
            //     height: _controller.value.size.height,
            //     child: VideoPlayer(_controller),
            //   ),
            // ),
            child: Image.network(
              "https://plus.unsplash.com/premium_photo-1669652909169-27f926cc856d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dmVnZXRhYmxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
              fit: BoxFit.cover,
            ),
          ),
          Center(
              child: Text(
            "Grocery Shopping",
            textAlign: TextAlign.center,
            style: textTheme.displayMedium!.copyWith(
                color: colorScheme.onPrimary, fontWeight: FontWeight.bold),
          )),
          Positioned(
            bottom: 48,
            right: 16,
            left: 16,
            child: Column(
              children: [
                FilledButton(
                    style: FilledButton.styleFrom(
                        minimumSize: Size.fromHeight(48)),
                    onPressed: () {},
                    child: Text(
                      "Login or register",
                      style: textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )),
                const SizedBox(height: 16),
                FilledButton(
                    style: FilledButton.styleFrom(
                        minimumSize: Size.fromHeight(48),
                        backgroundColor: Colors.deepOrangeAccent),
                    onPressed: () {},
                    child: Text(
                      "Shop as guest",
                      style: textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
