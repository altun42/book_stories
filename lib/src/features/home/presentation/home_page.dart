import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:book_store/src/features/home/application/product_service.dart';
import 'package:book_store/src/routing/app_router.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common_wigets/search_field.dart';
import '../domain/product_model.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dioProvider = Provider<Dio>((ref) {
      // Dio istemcisini yapılandırma
      Dio dio = Dio();
      return dio;
    });
    final apiServiceProvider = Provider<ProductService>((ref) {
      final dio = ref.read(dioProvider);
      return ProductService(dio);
    });

    final dataProvider = FutureProvider<Either<String, List<Product>>>((ref) async {
      // API'den veri çekme
      final apiService = ref.read(apiServiceProvider);
      return apiService.getProduct();
    });
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 60.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/Logo.png',
                      width: 50.w,
                      height: 32.h,
                    ),
                    Text(
                      "Catalog",
                      style: TextStyle(color: const Color(0xff090937), fontSize: 20.sp, fontWeight: FontWeight.w700, fontFamily: 'Manrope'),
                    )
                  ],
                ),
              ),
              SizedBox(height: 48.h),
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: SizedBox(
                  height: 42.h,
                  width: MediaQuery.of(context).size.width,
                  child: Consumer(builder: (context, ref, child) {
                    final dataAsyncValue = ref.watch(dataProvider);

                    return dataAsyncValue.when(
                      data: (data) {
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: data.length(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 10.w),
                              child: SizedBox(
                                child: Bounceable(
                                  onTap: () {},
                                  child: Container(
                                    color: const Color(0xffF4F4FF),
                                    padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.w),
                                    child: Text(
                                      "",
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Manrope',
                                          color: const Color.fromRGBO(9, 9, 55, 0.40)),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      error: (error, stackTrace) => Text('Hata:$error'),
                      loading: () => const CircularProgressIndicator(),
                    );
                  }),
                ),
              ),
              SizedBox(height: 20.h),
              SearchField(
                onChanged: (p0) {},
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.7,
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 40.h),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Best Seller",
                                    style: TextStyle(
                                        fontSize: 20.sp, fontWeight: FontWeight.w700, color: const Color(0xff090937), fontFamily: 'Manrope'),
                                  ),
                                  Bounceable(
                                    onTap: () {
                                      context.pushRoute(const CatologDetailRoute());
                                    },
                                    child: Text(
                                      "View All",
                                      style: TextStyle(
                                          fontSize: 12.sp, fontWeight: FontWeight.w700, color: const Color(0xffEF6B4A), fontFamily: 'Manrope'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 20.w,
                              ),
                              child: SizedBox(
                                height: 140.h,
                                width: MediaQuery.of(context).size.width,
                                child: ListView.builder(
                                  itemCount: 5,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.only(right: 10.w),
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10.w),
                                        width: 210.w,
                                        decoration: BoxDecoration(
                                          color: const Color(0xffF4F4FF),
                                          borderRadius: BorderRadius.circular(4.sp),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              height: 120.h,
                                              width: 80.w,
                                              child: Image.asset(
                                                'assets/images/Picture.png',
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 20.h, left: 10.h),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Dune",
                                                    style: TextStyle(
                                                        fontSize: 12.sp,
                                                        fontWeight: FontWeight.w600,
                                                        color: const Color(0xff090937),
                                                        fontFamily: 'Manrope'),
                                                  ),
                                                  SizedBox(
                                                    height: 5.h,
                                                  ),
                                                  Text(
                                                    "Frank Herbet",
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight: FontWeight.w600,
                                                        color: const Color.fromRGBO(9, 9, 55, 0.60),
                                                        fontFamily: 'Manrope'),
                                                  ),
                                                  SizedBox(
                                                    height: 44.h,
                                                  ),
                                                  Text(
                                                    "87,75 \$",
                                                    style: TextStyle(
                                                        color: const Color(0xff6251DD),
                                                        fontSize: 16.sp,
                                                        fontWeight: FontWeight.w600,
                                                        fontFamily: 'Manrope'),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
