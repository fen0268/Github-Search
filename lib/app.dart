import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pages/home_page.dart';
import 'utils/theme_mode.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider.notifier);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue).copyWith(
        cardTheme: const CardTheme(margin: EdgeInsets.zero),
        scaffoldBackgroundColor: Colors.white,
        sliderTheme:
            SliderThemeData(overlayShape: SliderComponentShape.noOverlay),
      ),
      darkTheme: ThemeData.dark(),
      themeMode: themeMode.state,
      home: const HomePage(),
    );
  }
}
