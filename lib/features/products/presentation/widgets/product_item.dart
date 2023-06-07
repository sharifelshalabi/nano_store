import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:untitled1/core/constants/app_colors.dart';
import '../../../../core/utils/navigation.dart';
import '../../../single product/presentation/pages/product_detail.dart';
import '../../data/products_list_model.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigation.push(
            context,
            ProductDetail(
              product: product,
            ));
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              image: DecorationImage(
                fit: BoxFit.contain,
                image: CachedNetworkImageProvider(
                  product.image.toString(),
                ),
              ),
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          ColorConstant.gray400.withOpacity(0.3),
                          ColorConstant.gray500.withOpacity(0.3),
                        ],
                      ),
                    ),
                    margin: const EdgeInsets.all(8),
                    child: Text(
                      '${product.price}' + ' AED',
                      style: TextStyle(
                          color: ColorConstant.whiteA700, fontSize: 18),
                    ),
                  ),
                  const Spacer(),
                  RatingBar.builder(
                    itemSize: 20,
                    initialRating: product.rating!.rate!,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  )
                ],
              ),
            ]),
          ),
          ListTile(
            title: Text(product.title.toString()),
            subtitle: Text(
              product.description.toString(),
            ),
          )
        ]),
      ),
    );
  }
}
