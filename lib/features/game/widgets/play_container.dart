import 'package:flutter/material.dart';
import 'dart:math';

import 'package:shadow_boxing/gen/assets.gen.dart';

class PlayContainer extends StatefulWidget {
  const PlayContainer({super.key});

  @override
  State<PlayContainer> createState() => _PlayContainerState();
}

class _PlayContainerState extends State<PlayContainer>
    with SingleTickerProviderStateMixin {
  Color topArrowColor = Colors.black;
  Color bottomArrowColor = Colors.black;
  Color leftArrowColor = Colors.black;
  Color rightArrowColor = Colors.black;

  late final AnimationController _controller;
  Matrix4? _transform;
  final Random _random = Random();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _transform = Matrix4.identity();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _getRandomTransform() {
    List<Matrix4> transforms = [
      Matrix4.identity()
        ..setEntry(3, 2, 0.01)
        ..rotateX(0.25), // Up
      Matrix4.identity()
        ..setEntry(3, 2, 0.01)
        ..rotateY(0.25), // Right
      Matrix4.identity()
        ..setEntry(3, 2, 0.01)
        ..rotateX(-0.25), // Down
      Matrix4.identity()
        ..setEntry(3, 2, 0.01)
        ..rotateY(-0.25), // Left
    ];
    setState(() {
      _transform = transforms[_random.nextInt(4)];
    });
  }

  void _resetColors() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        topArrowColor = Colors.black;
        bottomArrowColor = Colors.black;
        leftArrowColor = Colors.black;
        rightArrowColor = Colors.black;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onVerticalDragEnd: (details) {
        if (details.velocity.pixelsPerSecond.dy > 0) {
          // Swipe down
          setState(() {
            bottomArrowColor = Colors.red.shade800;
            _getRandomTransform();
          });
          print("Swipe down");
          // _resetColors();
        } else if (details.velocity.pixelsPerSecond.dy < 0) {
          // Swipe up
          setState(() {
            topArrowColor = Colors.red.shade800;
            _getRandomTransform();
          });
          // _resetColors();
        }
      },
      onHorizontalDragEnd: (details) {
        if (details.velocity.pixelsPerSecond.dx > 0) {
          // Swipe right
          setState(() {
            rightArrowColor = Colors.red.shade800;
          });
          // _resetColors();
        } else if (details.velocity.pixelsPerSecond.dx < 0) {
          // Swipe left
          setState(() {
            leftArrowColor = Colors.red.shade800;
          });
          // _resetColors();
        }
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            // Player 1 Card - Top Left
            Positioned(
              top: 10,
              left: 10,
              child: Card(
                elevation: 4,
                child: PlayerCard(playerName: "Player 1"),
              ),
            ),

            // Player 2 Card - Bottom Right
            Positioned(
              bottom: 10,
              right: 10,
              child: Card(
                elevation: 4,
                child: PlayerCard(playerName: "Player 2"),
              ),
            ),

            // Center Circle with Transform
            Center(
              child: Transform(
                // duration: const Duration(milliseconds: 500),
                transform: _transform!,
                alignment: FractionalOffset.center,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: Assets.images.person.image(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                ),
              ),
            ),

            // Top Arrow
            Positioned(
              top: 16,
              left: 0,
              right: 0,
              child: Center(
                child: Icon(
                  Icons.keyboard_double_arrow_up,
                  size: 48,
                  color: topArrowColor,
                ),
              ),
            ),

            // Bottom Arrow
            Positioned(
              bottom: 16,
              left: 0,
              right: 0,
              child: Center(
                child: Icon(
                  Icons.keyboard_double_arrow_down,
                  size: 48,
                  color: bottomArrowColor,
                ),
              ),
            ),

            // Left Arrow
            Positioned(
              left: 16,
              top: 0,
              bottom: 0,
              child: Center(
                child: Icon(
                  Icons.keyboard_double_arrow_left,
                  size: 48,
                  color: leftArrowColor,
                ),
              ),
            ),

            // Right Arrow
            Positioned(
              right: 16,
              top: 0,
              bottom: 0,
              child: Center(
                child: Icon(
                  Icons.keyboard_double_arrow_right,
                  size: 48,
                  color: rightArrowColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlayerCard extends StatelessWidget {
  const PlayerCard({super.key, required this.playerName});

  final String playerName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: Column(
        children: [
          Icon(Icons.person, size: 80),
          SizedBox(width: 8),
          Text(playerName),
        ],
      ),
    );
  }
}
