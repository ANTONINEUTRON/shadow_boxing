// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:guexer/features/game/cubits/game_cubit.dart';
// import 'package:guexer/shared/widgets/custom_button.dart';

// class GameStartDialog extends StatelessWidget {
//   const GameStartDialog({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var gameCubit = context.watch<GameCubit>();
//     // animationController.stop();
//     return Dialog(
//       child: Container(
//         padding: EdgeInsets.all(24),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text(gameCubit.state.initResponse),
//             CustomButton(
//               text: "START",
//               onTap: () {
//                 // Close dialog
//                 Navigator.pop(context);
//                 gameCubit.startGame();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ToggleSFXButton extends StatelessWidget {
//   const ToggleSFXButton({super.key, required this.animationController});

//   final AnimationController animationController;

//   @override
//   Widget build(BuildContext context) {
//     // var appBloc = context.watch<AppBloc>();

//     return CustomButton(
//       text: "SOUND",
//       icon: Icon(
//         // appBloc.state.sfxToPlay ? Icons.volume_up :
//         Icons.volume_off,
//         color: Theme.of(context).colorScheme.secondary,
//         size: 35,
//       ),
//       onTap: () {
//         // Turn off sound
//         // appBloc.toggleSfx();
//       },
//     );
//   }
// }
