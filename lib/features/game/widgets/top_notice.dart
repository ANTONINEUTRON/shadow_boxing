


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shadow_boxing/features/game/cubits/game_cubit.dart';

class TopNotice extends StatelessWidget {
  const TopNotice({super.key});

  @override
  Widget build(BuildContext context) {
    var notice = context.watch<GameCubit>().state.notice;
    return notice.isEmpty ? Container() : Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.25),
                Colors.white.withOpacity(0.25),
              ],
            ),
            borderRadius: BorderRadius.circular(16),
          ),
      child: Center(
        child: ShaderMask(
          shaderCallback:
              (bounds) => LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.tertiary,
                ],
              ).createShader(bounds),
          child: Text(
            notice,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              letterSpacing: 8,
              fontWeight: FontWeight.w900,
              fontSize: 32,
              shadows: [
                Shadow(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                  offset: Offset(0, 4),
                  blurRadius: 8,
                ),
                Shadow(
                  color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
                  offset: Offset(0, -4),
                  blurRadius: 8,
                ),
              ],
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
