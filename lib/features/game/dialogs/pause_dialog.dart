import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shadow_boxing/shared/widgets/custom_button.dart';

class PauseDialog extends StatelessWidget {
  const PauseDialog({super.key});

  @override
  Widget build(BuildContext context) {
    // animationController.stop();
    return Dialog(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: "RESUME",
              onTap: () {
                context.router.pop();
              },
            ),
            // ToggleSFXButton(animationController: animationController),
            CustomButton(
              text: "HELP",
              onTap: null,
              // () {
              //   Navigator.push(
              //     context,
              //     PreviewPage.route(),
              //   );
              // },
            ),
            CustomButton(
              text: "END GAME",
              onTap: () {
                context.router.popUntilRoot();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ToggleSFXButton extends StatelessWidget {
  const ToggleSFXButton({super.key, required this.animationController});

  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    // var appBloc = context.watch<AppBloc>();

    return CustomButton(
      text: "SOUND",
      icon: Icon(
        // appBloc.state.sfxToPlay ? Icons.volume_up :
        Icons.volume_off,
        color: Theme.of(context).colorScheme.secondary,
        size: 35,
      ),
      onTap: () {
        // Turn off sound
        // appBloc.toggleSfx();
      },
    );
  }
}
