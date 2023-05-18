import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:swish_basketball/view/auth/login.dart';
import 'package:swish_basketball/view/auth/otp.dart';
import 'package:swish_basketball/view/auth/payment.dart';
import 'package:swish_basketball/view/auth/register.dart';

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
        return const LoginScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'register',
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
    ),
  ],
);
