import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shadow_boxing/features/game/cubits/game_cubit.dart';

class CommentsContainer extends StatefulWidget {
  const CommentsContainer({super.key});

  @override
  State<CommentsContainer> createState() => _CommentsContainerState();
}

class _CommentsContainerState extends State<CommentsContainer> {
  @override
  Widget build(BuildContext context) {
    var gameCubit = context.watch<GameCubit>();

    var comments = gameCubit.state.comments;

    return comments.isEmpty
        ? Container()
        : SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(comments, style: TextStyle(fontSize: 16)),
            ),
          ),
        );
  }
}
