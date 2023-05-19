import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:swish_basketball/view/auth/otp.dart';
import 'package:swish_basketball/view/auth/payment.dart';
import 'package:swish_basketball/view/auth/register.dart';
import 'package:swish_basketball/view/community/addcommunity.dart';
import 'package:swish_basketball/view/mainhome/mainhome.dart';
import 'package:swish_basketball/view/setting/account.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          darkTheme: ThemeData.dark(),
          title: 'Condition Based Monitoring',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routerConfig: _router,
        );
      },
    );
  }
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeMainScreen();
        },
        routes: [
          GoRoute(
            path: 'addcommunity',
            builder: (BuildContext context, GoRouterState state) {
              return const AddCommunity();
            },
          ),
          GoRoute(
            path: 'account',
            builder: (BuildContext context, GoRouterState state) {
              return const AccountScreen();
            },
          ),
        ]),
    // GoRoute(
    //   path: '/',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const LoginScreen();
    //   },
    // ),
    // GoRoute(
    //   path: '/home/:type',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return HomeMainScreen(
    //       type: state.pathParameters["name"]!,
    //     );
    //   },
    // ),
    GoRoute(
      path: '/register',
      builder: (BuildContext context, GoRouterState state) {
        return const RegisterScreen();
      },
      routes: [
        GoRoute(
          path: 'otp',
          builder: (BuildContext context, GoRouterState state) {
            return const OtpScreen();
          },
        ),
        GoRoute(
          path: 'payment',
          builder: (BuildContext context, GoRouterState state) {
            return const PaymentScreen();
          },
        ),
      ],
    ),
  ],
);
