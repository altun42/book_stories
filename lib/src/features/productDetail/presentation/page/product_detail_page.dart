// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/annotations.dart';
import 'package:book_store/src/features/catalog/data/model/product_model.dart/product_model.dart';
import 'package:book_store/src/features/productDetail/presentation/provider/product_detail_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/src/common_wigets/login_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class ProductDetailPage extends ConsumerWidget {
  Product product;
  ProductDetailPage({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
        final state = ref.watch(productDetailProvider);

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Text(
              "Book Details",
              style: TextStyle(color: const Color(0xff090937), fontSize: 20.sp, fontWeight: FontWeight.w700, fontFamily: 'Manrope'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: (MediaQuery.of(context).size.width - 150.w) / 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          product.cover,
                          width: 150.w,
                          height: 225.h,
                        ),
                        SizedBox(
                          width: 56.w,
                        ),
                        Bounceable(
                          onTap: () {
                            ref.read(productDetailProvider.notifier).likeControl();
                            
                          },
                          child: Container(
                              height: 44.h,
                              width: 44.w,
                              decoration: BoxDecoration(
                                color: const Color(0xffF4F4FF),
                                borderRadius: BorderRadius.circular(35.sp),
                              ),
                              child:  Center(
                                  child: Icon(
                              state.isLike==false?  Icons.favorite_border_outlined:Icons.favorite,
                                color: Color(0xff6251DD),
                              ))),
                        )
                      ],
                    ),
                  ),
                  Text(
                    product.name,
                    style: TextStyle(color: const Color(0xff090937), fontSize: 20.sp, fontWeight: FontWeight.w700, fontFamily: 'Manrope'),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                   product.author,
                    style:
                        TextStyle(color: const Color.fromRGBO(9, 9, 55, 0.60), fontSize: 16.sp, fontWeight: FontWeight.w600, fontFamily: 'Manrope'),
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Summary",
                      style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700, fontFamily: 'Manrope', color: const Color(0xff090937)),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      product.description,
                      style: TextStyle(
                        height: 1.5.h,
                        fontSize: 16.sp,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Manrope',
                        color: const Color.fromRGBO(9, 9, 55, 0.60),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: LoginButton(
                    onTap: () {},
                    text: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${product.price} \$",
                            style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w600, fontFamily: "Manrope"),
                          ),
                          Text(
                            "Buy Now",
                            style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w600, fontFamily: "Manrope"),
                          ),
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
