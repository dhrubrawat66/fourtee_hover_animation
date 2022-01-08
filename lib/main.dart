import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fourteen/widgets/icon_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = "Flutter Icon Hover";
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primaryColor: Colors.blue),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          runSpacing: 1.0,
          spacing: 5.0,
          children: const [
            IconWidget(
              icon: FontAwesomeIcons.mapMarkedAlt,
              text: "Nepal",
              color: Colors.red,
            ),
            IconWidget(
              icon: FontAwesomeIcons.phoneAlt,
              text: "983434333",
              color: Colors.blue,
            ),
            IconWidget(
              icon: FontAwesomeIcons.envelope,
              text: "dhrub6mail.com",
              color: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );
  }
}
