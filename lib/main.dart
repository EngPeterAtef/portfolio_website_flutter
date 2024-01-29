import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const seedColor = Color.fromARGB(255, 10, 24, 76);
    return MaterialApp(
      title: 'Peter Portfolio',
      theme: ThemeData(
        // This is the theme of your application.
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: seedColor),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 26, 24, 24),
        ),
        primaryColorDark: Colors.black,
        primaryColor: Colors.black,
        dialogBackgroundColor: Colors.black,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const textStyle = TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Peter's portfolio",
              style: textStyle,
            ),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: const Text('Home', style: textStyle)),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.work,
                  color: Colors.white,
                ),
                label: const Text('Experience', style: textStyle)),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.laptop_mac_rounded,
                  color: Colors.white,
                ),
                label: const Text('Projects', style: textStyle)),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.contact_page_outlined,
                  color: Colors.white,
                ),
                label: const Text('contacts', style: textStyle)),
          ],
        ),
      ),
      body: Container(
        child: Text(
          'Hello, World!',
          style: textStyle,
        ),
      ),
    );
  }
}
