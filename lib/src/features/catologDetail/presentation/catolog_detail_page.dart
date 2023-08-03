// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/src/common_wigets/search_field.dart';
import 'package:book_store/src/features/catalog/data/model/category_model/category_model.dart';
import 'package:book_store/src/routing/app_router.dart';

@RoutePage()
class CatologDetailPage extends StatefulWidget {
  Category category;
   CatologDetailPage({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  State<CatologDetailPage> createState() => _CatologDetailPageState();
}

class _CatologDetailPageState extends State<CatologDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Text(
              widget.category.name,
              style: TextStyle(color: const Color(0xff090937), fontSize: 20.sp, fontWeight: FontWeight.w700, fontFamily: 'Manrope'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0.h),
          child: Column(
            children: [
              SearchField(onChanged: (value) {}),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 40.w,
                height: 539.h,
                child: GridView.builder(
                  itemCount: widget.category.productList?.length??0,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, crossAxisSpacing: 10.w, mainAxisSpacing: 10.h, childAspectRatio: 0.6),
                  itemBuilder: (context, index) {
                    final product=  widget.category.productList?[index];
                    

                    return Bounceable(
                      onTap: () {
                        context.pushRoute( ProductDetailRoute(product:product!));
                      },
                      child: Container(
                        height: 284.h,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.sp), color: const Color(0xffF4F4FF)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 10.h,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 225.h,
                                width: 170.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.sp),
                                    image:  DecorationImage(image: NetworkImage(product?.cover??" "), fit: BoxFit.fill)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15.0.w),
                                child: Text(
                                  product?.name??" ",
                                  style:
                                      TextStyle(fontSize: 8.sp, fontWeight: FontWeight.w600, fontFamily: 'Manrope', color: const Color(0xff090937)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                     product?.author??" ",
                                      style: TextStyle(
                                          fontSize: 6.sp,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Manrope',
                                          color: const Color.fromRGBO(9, 9, 55, 0.60)),
                                    ),
                                    Text(
                                      "${product?.price??" "} \$",
                                      style: TextStyle(
                                          fontSize: 10.sp, fontWeight: FontWeight.w700, fontFamily: 'Manrope', color: const Color(0xff6251DD)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
