import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/views/notes_view.dart';

import 'constants.dart';

void main()  async{

  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      home: const NotesView(),
    );
  }
}
