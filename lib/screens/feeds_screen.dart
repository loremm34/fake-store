import 'package:flutter/material.dart';
import 'package:fake_store/models/products_model.dart';

import '../widgets/feeds_widget.dart';
import 'package:fake_store/services/api_handler.dart';

class FeedsScreen extends StatefulWidget {
  const FeedsScreen({Key? key}) : super(key: key);

  @override
  State<FeedsScreen> createState() => _FeedsScreenState();
}

class _FeedsScreenState extends State<FeedsScreen> {
  List<ProductsModel> productsList = [];

  Future<void> getProducts() async {
    productsList = await APIHandler.getAllProducts();
    setState(() {});
  }

  @override
  void didChangeDependencies() {
    getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 4,
        title: const Text('All Products'),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: productsList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 0.0,
            childAspectRatio: 0.7),
        itemBuilder: (ctx, index) {
          var products = productsList[index];
          return FeedsWidget(
            imageURL: products.images![0],
            title: products.title!,
          );
        },
      ),
    );
  }
}
