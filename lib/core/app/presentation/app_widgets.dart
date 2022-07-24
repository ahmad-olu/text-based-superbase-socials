import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/auth/core/core.dart';
import 'package:geat/auth/registration/registration.dart';
import 'package:geat/auth/walk_in/presentation/forgot_password.dart';
import 'package:geat/auth/walk_in/walk_in.dart';
import 'package:geat/core/core.dart';
import 'package:geat/core/routes/app_router.gr.dart';
import 'package:geat/feeds/feeds.dart';
//import 'package:geat/core/routes/app_router.gr.dart';
import 'package:geat/injection.dart';
import 'package:geat/post/post.dart';
import 'package:responsive_framework/responsive_framework.dart';

// class AppWidget extends StatelessWidget {
//   const AppWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final _appRouter = AppRouter();
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => getIt<ThemeBloc>(),
//         ),
// BlocProvider(
//           create: (context) => getIt<ThemeBloc>(),
//         )
//       ],
//       child: BlocBuilder<ThemeBloc, ThemeState>(
//         builder: (context, state) {
//           return MaterialApp.router(
//theme: state.themeData,
//             builder: (context, widget) => ResponsiveWrapper.builder(
//               ClampingScrollWrapper.builder(context, widget!),
//               breakpoints: const [
//                 ResponsiveBreakpoint.resize(350, name: MOBILE),
//                 ResponsiveBreakpoint.autoScale(600, name: TABLET),
//                 ResponsiveBreakpoint.resize(800, name: DESKTOP),
//                 ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
//               ],
//             ),
//             routeInformationParser: _appRouter.defaultRouteParser(),
//             routerDelegate: _appRouter.delegate(),
//           );
//         },
//       ),
//     );
//   }
//   //  Future<void> _configureAmplify() async {
//   //   Amplify.addPlugins([
//   //     AmplifyAuthCognito(),
//   //     AmplifyDataStore(modelProvider: ModelProvider.instance),
//   //     AmplifyAPI(),
//   //     AmplifyStorageS3(),
//   //     AmplifyAnalyticsPinpoint(),
//   //   ]);
//   //   try {
//   //     await Amplify.configure(amplifyconfig);
//   //   } catch (e) {
//   //     //Todo!!: change from log later
//   //     print(
//   //         "Tried to reconfigure Amplify; this can occur when your app restarts on Android.");
//   //   }
//   // }

// }
class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<ThemeBloc>(),
        )
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Geat',
            theme: state.themeData,
            builder: (context, widget) => ResponsiveWrapper.builder(
              ClampingScrollWrapper.builder(context, widget!),
              breakpoints: const [
                ResponsiveBreakpoint.resize(350, name: MOBILE),
                ResponsiveBreakpoint.autoScale(600, name: TABLET),
                ResponsiveBreakpoint.resize(800, name: DESKTOP),
                ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
              ],
            ),
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
          );
        },
      ),
    );
  }
}
