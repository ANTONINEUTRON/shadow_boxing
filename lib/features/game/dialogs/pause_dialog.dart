import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shadow_boxing/shared/widgets/custom_button.dart';

class PauseDialog extends StatelessWidget {
  const PauseDialog({
    super.key,
  });


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
                // Close dialog
                Navigator.pop(context);

                //Start animation
                // animationController.forward();

                // resume timer
                // context.read<TimerBloc>().start();
              },
            ),
            // ToggleSFXButton(animationController: animationController),
            CustomButton(
              text: "HELP",
              onTap: null
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
                Navigator.pop(context);

                // Navigator.pushReplacement(
                //   context,
                //   GameOverPage.route(),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ToggleSFXButton extends StatelessWidget {
  const ToggleSFXButton({
    super.key,
    required this.animationController,
  });

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
