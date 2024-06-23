import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:fake_store/widgets/appbar_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _searchController = TextEditingController();

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
        body: Column(
          children: [
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _searchController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Theme.of(context).cardColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    suffixIcon: const Icon(IconlyLight.search),
                    hintText: "Search",
                    filled: true,
                    fillColor: Theme.of(context).cardColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
