import 'package:clickclock/config/theme/app_theme.dart';
import 'package:clickclock/presentation/providers/discover_provider.dart';
import 'package:clickclock/presentation/screens/discover/discover_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DiscoverProvider(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: true,
          theme: AppTheme().getTheme(),
          title: 'ClikClok',
          home: DiscoverScreen()),
    );
  }
}
