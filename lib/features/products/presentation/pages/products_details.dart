import 'package:blocer/blocer.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/core/constants/app_colors.dart';
import 'package:untitled1/features/products/domain/product_bloc.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../data/products_list_model.dart';
import '../widgets/product_item.dart';
import '../../data/products_response_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {


  @override
  void initState() {
    super.initState();
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'All Products ',
        color: Colors.grey.shade200,
        titleColor: ColorConstant.black900,

      ),
      body: Blocer<ProductsCubit,ProductsResponseModel>.get(
        builder: (ProductsResponseModel model) {
          List<Product> products = model.items!;
          return ListView.separated(
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                final product = products[index];
                return ProductItem(
                  product: product,
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  indent: 20,
                  endIndent: 20,
                );
              });
        },
        getData: () {
          context.read<ProductsCubit>().getProducts();
        },
      ),
    );
  }





}
