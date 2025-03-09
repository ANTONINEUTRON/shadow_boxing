import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shadow_boxing/core/routes.dart';
import 'package:shadow_boxing/features/game/cubits/game_cubit.dart';
import 'package:shadow_boxing/shared/constants.dart';

void main() {
  runApp(const MyApp());
}

final appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return MultiBlocProvider(
      providers: [
        // BlocProvider(create: (context) => AppCubit()),
        BlocProvider(create: (context) => GameCubit()),
      ],
      child: MaterialApp.router(
        title: AppConstants.appName,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.orange,
            secondary: const Color(0XFFE6A479),
            tertiary: const Color(0XFF723412),
          ),
          useMaterial3: true,
          textTheme: GoogleFonts.meriendaTextTheme(),
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter.config(),
      ),
    );
  }
}
