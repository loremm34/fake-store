import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:fake_store/widgets/appbar_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          actions: [
            AppBarIcons(function: () {}, icon: IconlyBold.user3),
          ],
          leading: AppBarIcons(function: () {}, icon: IconlyBold.category),
        ),
        body: Center(
          child: Text("Welcome to this course"),
        ),
      ),
    );
  }
}
