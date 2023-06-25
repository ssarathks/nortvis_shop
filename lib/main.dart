import 'package:flutter/material.dart';
import 'package:nortvis_task/constants/theme_constants.dart';
import 'package:nortvis_task/providers/food_provider.dart';
import 'package:nortvis_task/screens/tabbed_layout_screen.dart';
import 'package:provider/provider.dart';
import './router/router.dart' as app_router;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FoodProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeConstants.lightTheme,
        darkTheme: ThemeConstants.darkTheme,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: app_router.Router.generateRoute,
        home: const TabbedLayouScreen(),
      ),
    );
  }
}
