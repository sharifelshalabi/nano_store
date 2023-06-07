import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/navigation.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/review.dart';
import '../../../products/data/products_list_model.dart';
import '../../../products/data/products_response_model.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: CachedNetworkImageProvider(
                  product.image.toString(),
                ),
              ),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.all(16),
                    child: CustomIconButton(
                      onPressed: () {
                        Navigation.pop(context);
                      },
                      color: ColorConstant.gray500,
                      icon: Icons.arrow_back,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    child: CustomIconButton(
                      onPressed: () {},
                      color: ColorConstant.gray500,
                      icon: Icons.more_vert,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 8,top: 8,bottom: 8),
                child: Text(
                  'Details',
                  style:
                      TextStyle(color: ColorConstant.black900, fontSize: 22),
                ),
              )
            ]),
          ),
          DraggableScrollableSheet(
            maxChildSize: 0.6,
            initialChildSize: 0.35,
            minChildSize: 0.35,
            builder: (context, scrollController) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(


                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, left: 24, right: 8, bottom: 8),
                      child: Text(
                        '${product.price}  AED',
                        style: TextStyle(
                            color: ColorConstant.whiteA700, fontSize: 22),
                      ),
                    ),
                    width: 10000,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          ColorConstant.primary.withOpacity(0.3),
                          ColorConstant.secondary.withOpacity(0.3),
                        ]
                      )
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: ColorConstant.whiteA700,
                        boxShadow: [
                          BoxShadow(
                            color: ColorConstant.gray50,
                            offset: Offset(0.0, -2.0),
                            blurRadius: 4.0,
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24.0),
                          topRight: Radius.circular(24.0),
                        ),
                      ),
                      child: ListView(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        controller: scrollController,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                                size: 25,
                                Icons.expand_more,
                                color: ColorConstant.primary),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomIconButton(
                                onPressed: () {
                                  Navigation.pop(context);
                                },
                                color: Colors.grey.shade100,
                                icon: Icons.upload,
                              ),
                              SizedBox(
                                width: 200,
                                height: 44,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: ColorConstant.primary,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                  child: Text(
                                    'Order Now',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: ColorConstant.whiteA700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ListTile(
                            title: const Text(
                              'Description',
                            ),
                            subtitle: Text(
                              product.description.toString(),
                            ),
                          ),
                          Review(
                            initialRating: product.rating!.rate!,
                            ratingCount: product.rating!.count!,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
