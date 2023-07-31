import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:swish_basketball/splash.dart';

import 'package:swish_basketball/view/analytics/scoreanalytics.dart';
import 'package:swish_basketball/view/auth/forgotpaswordscreen.dart';
import 'package:swish_basketball/view/auth/kidsrigesterscreen.dart';
import 'package:swish_basketball/view/auth/login.dart';
import 'package:swish_basketball/view/auth/otp.dart';
import 'package:swish_basketball/view/auth/payment.dart';
import 'package:swish_basketball/view/auth/register.dart';
import 'package:swish_basketball/view/community/addcommunity.dart';
import 'package:swish_basketball/view/goals/activityanalytics.dart';
import 'package:swish_basketball/view/goals/congratulation.dart';
import 'package:swish_basketball/view/goals/createyourgoals.dart';
import 'package:swish_basketball/view/goals/downloadscreen.dart';
import 'package:swish_basketball/view/goals/freethrow.dart';
import 'package:swish_basketball/view/goals/profileupdated.dart';
import 'package:swish_basketball/view/goals/setmygoals.dart';
import 'package:swish_basketball/view/goals/shortatempts.dart';
import 'package:swish_basketball/view/goals/shortchart.dart';
import 'package:swish_basketball/view/goals/shotschart.dart';
import 'package:swish_basketball/view/goals/workout.dart';
import 'package:swish_basketball/view/home/childhomescreen.dart';
import 'package:swish_basketball/view/home/parenthomescreen.dart';
import 'package:swish_basketball/view/kids/kidsactivityanalytics.dart';
import 'package:swish_basketball/view/kids/kidshomescreen.dart';
import 'package:swish_basketball/view/kids/kidshotchart.dart';
import 'package:swish_basketball/view/mainhome/mainhome.dart';
import 'package:swish_basketball/view/notifications/notification.dart';
import 'package:swish_basketball/view/paymentmethod/analytics.dart';
import 'package:swish_basketball/view/paymentmethod/analytics1.dart';
import 'package:swish_basketball/view/paymentmethod/inviteuser.dart';
import 'package:swish_basketball/view/paymentmethod/paymentmethod.dart';

import 'package:swish_basketball/view/setting/account.dart';
import 'package:swish_basketball/view/shooting/PracticeResult.dart';
import 'package:swish_basketball/view/shooting/matchresult.dart';
import 'package:swish_basketball/view/shooting/shooting.dart';
import 'package:swish_basketball/view/shooting/singleshot.dart';
import 'package:swish_basketball/view/shooting/throwandselection.dart';
import 'package:swish_basketball/view/shooting/voicecommand.dart';
import 'package:swish_basketball/view/video/swichvideolibrary.dart';
import 'package:swish_basketball/view/video/videolibrary.dart';

import 'view/shooting/criteriaselection.dart';

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
        return const SpashScreen();
      },
    ),
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
        name: 'home',
        path: '/home/:type',
        builder: (BuildContext context, GoRouterState state) {
          return HomeMainScreen(
            type: state.pathParameters["type"]!,
          );
        },
        routes: [
          GoRoute(
            path: 'inviteuser',
            builder: (BuildContext context, GoRouterState state) {
              return const inviteruser();
            },
          ),
          GoRoute(
            path: 'paymentmethod',
            builder: (BuildContext context, GoRouterState state) {
              return const paymentmethod();
            },
          ),
          GoRoute(
            path: 'shotschart',
            builder: (BuildContext context, GoRouterState state) {
              return const shotschart();
            },
          ),
          GoRoute(
            path: 'CriteriaSelectionScreen',
            builder: (BuildContext context, GoRouterState state) {
              return const CriteriaSelectionScreen();
            },
          ),
          GoRoute(
            path: 'voicecommand',
            builder: (BuildContext context, GoRouterState state) {
              return const voicecommand();
            },
          ),
          GoRoute(
            path: 'kidshomescreen',
            builder: (BuildContext context, GoRouterState state) {
              return const kidshomescreen();
            },
          ),
          GoRoute(
            path: 'childhomescreen',
            builder: (BuildContext context, GoRouterState state) {
              return const ChildHomeScreen();
            },
          ),
          GoRoute(
            path: 'VideoLibraryView',
            builder: (BuildContext context, GoRouterState state) {
              return const VideoLibraryView();
            },
          ),
          GoRoute(
            path: 'PracticeResult',
            builder: (BuildContext context, GoRouterState state) {
              return const PracticeResult();
            },
          ),
          GoRoute(
            path: 'mikeottrando',
            builder: (BuildContext context, GoRouterState state) {
              return const mikeottrando();
            },
          ),
          GoRoute(
            path: 'kidsregisterscreen',
            builder: (BuildContext context, GoRouterState state) {
              return const kidsregisterscreen();
            },
          ),
          GoRoute(
            path: 'shotsatempt',
            builder: (BuildContext context, GoRouterState state) {
              return const shotsatempt();
            },
          ),
          GoRoute(
            path: 'swishvideo',
            builder: (BuildContext context, GoRouterState state) {
              return const swishvideo();
            },
          ),
          GoRoute(
            path: 'EDITPROFILE',
            builder: (BuildContext context, GoRouterState state) {
              return const EDITPROFILE();
            },
          ),
          GoRoute(
            path: 'workoutscreen',
            builder: (BuildContext context, GoRouterState state) {
              return const workoutscreen();
            },
          ),
          GoRoute(
            path: 'daveottrando',
            builder: (BuildContext context, GoRouterState state) {
              return const daveottrando();
            },
          ),
          GoRoute(
            path: 'HomeScreen',
            builder: (BuildContext context, GoRouterState state) {
              return const HomeScreen();
            },
          ),
          GoRoute(
            path: 'freethrow',
            builder: (BuildContext context, GoRouterState state) {
              return const freethrow();
            },
          ),
          GoRoute(
            path: 'congratulationscreen',
            builder: (BuildContext context, GoRouterState state) {
              return const congratulationscreen();
            },
          ),
          GoRoute(
            path: 'kidactivityanalytics',
            builder: (BuildContext context, GoRouterState state) {
              return const kidactivityanalytics();
            },
          ),
          GoRoute(
            path: 'activityanalytic',
            builder: (BuildContext context, GoRouterState state) {
              return const activityanalytic();
            },
          ),
          GoRoute(
            path: 'downloadscreen',
            builder: (BuildContext context, GoRouterState state) {
              return const downloadscreen();
            },
          ),
          GoRoute(
            path: 'ScoreAnalytics',
            builder: (BuildContext context, GoRouterState state) {
              return const ScoreAnalytics();
            },
          ),
          GoRoute(
            path: 'NoitifcationScreen',
            builder: (BuildContext context, GoRouterState state) {
              return const NoitifcationScreen();
            },
          ),
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
          GoRoute(
              path: 'shooting',
              builder: (BuildContext context, GoRouterState state) {
                return const ShooingScreen();
              },
              routes: [
                GoRoute(
                  path: 'singleshot',
                  builder: (BuildContext context, GoRouterState state) {
                    return const singleshot();
                  },
                ),
                GoRoute(
                  path: 'voicecommand',
                  builder: (BuildContext context, GoRouterState state) {
                    return const voicecommand();
                  },
                ),
                GoRoute(
                  path: 'CriteriaSelectionScreen',
                  builder: (BuildContext context, GoRouterState state) {
                    return const CriteriaSelectionScreen();
                  },
                ),
                GoRoute(
                  path: 'throwandspot',
                  builder: (BuildContext context, GoRouterState state) {
                    return const ThrowAndSpotSelectionScreen();
                  },
                ),
                GoRoute(
                  path: 'matchresult',
                  builder: (BuildContext context, GoRouterState state) {
                    return const MatchResultScreen();
                  },
                ),
              ]),
          GoRoute(
            path: 'noitification',
            builder: (BuildContext context, GoRouterState state) {
              return const NoitifcationScreen();
            },
          ),
          GoRoute(
            path: 'setmygoals',
            builder: (BuildContext context, GoRouterState state) {
              return const SetMyGoalsScreen();
            },
          ),
          GoRoute(
            path: 'createyourgoals',
            builder: (BuildContext context, GoRouterState state) {
              return const CreateYourGoals();
            },
          ),
        ]),
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
          path: 'Resetpasword',
          builder: (BuildContext context, GoRouterState state) {
            return const Resetpasword();
          },
        ),
        GoRoute(
          path: 'payment',
          builder: (BuildContext context, GoRouterState state) {
            return const PaymentScreen();
          },
        ),
        GoRoute(
          path: 'shortchart',
          builder: (BuildContext context, GoRouterState state) {
            return const shortchart();
          },
        ),
        GoRoute(
          path: 'downloadscreen',
          builder: (BuildContext context, GoRouterState state) {
            return const downloadscreen();
          },
        ),
        GoRoute(
          path: 'congratulationscreen',
          builder: (BuildContext context, GoRouterState state) {
            return const congratulationscreen();
          },
        ),
        GoRoute(
          path: 'swishvideo',
          builder: (BuildContext context, GoRouterState state) {
            return const swishvideo();
          },
        ),
        GoRoute(
          path: 'activityanalytic',
          builder: (BuildContext context, GoRouterState state) {
            return const activityanalytic();
          },
        ),
        GoRoute(
          path: 'shotatempts',
          builder: (BuildContext context, GoRouterState state) {
            return const shotsatempt();
          },
        ),
        GoRoute(
          path: 'workoutscreen',
          builder: (BuildContext context, GoRouterState state) {
            return const workoutscreen();
          },
        ),
        GoRoute(
          path: 'freethrow',
          builder: (BuildContext context, GoRouterState state) {
            return const freethrow();
          },
        ),
        GoRoute(
          path: 'kidshomescreen',
          builder: (BuildContext context, GoRouterState state) {
            return const kidshomescreen();
          },
        ),
        GoRoute(
          path: 'kidshotchart',
          builder: (BuildContext context, GoRouterState state) {
            return const kidshotchart();
          },
        ),
        GoRoute(
          path: 'kidsactivityanalytics',
          builder: (BuildContext context, GoRouterState state) {
            return const kidactivityanalytics();
          },
        ),
        GoRoute(
          path: 'paymentmethod',
          builder: (BuildContext context, GoRouterState state) {
            return const paymentmethod();
          },
        ),
        GoRoute(
          path: 'paymentmethod',
          builder: (BuildContext context, GoRouterState state) {
            return const inviteruser();
          },
        ),
        GoRoute(
          path: 'shotschart',
          builder: (BuildContext context, GoRouterState state) {
            return const shotsatempt();
          },
        ),
        GoRoute(
          path: 'mikeottrando',
          builder: (BuildContext context, GoRouterState state) {
            return const mikeottrando();
          },
        ),
        GoRoute(
          path: 'daveottrando',
          builder: (BuildContext context, GoRouterState state) {
            return const daveottrando();
          },
        ),
        GoRoute(
          path: 'PracticeResult',
          builder: (BuildContext context, GoRouterState state) {
            return const PracticeResult();
          },
        ),
      ],
    ),
  ],
);
