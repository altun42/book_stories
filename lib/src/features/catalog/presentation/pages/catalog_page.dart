// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:book_store/src/features/catalog/presentation/providers/category_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:book_store/src/routing/app_router.dart';

import '../../../../common_wigets/search_field.dart';

@RoutePage()
class CatalogPage extends ConsumerWidget {
  CatalogPage();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(categoryProvider);

    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.only(top: 60.h),
          child: state.isLoading == none()
              ? Column(
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
                            style: TextStyle(
                                color: const Color(0xff090937),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Manrope'),
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
                        child: Row(
                          children: [
                            Bounceable(
                              onTap: () {
                                ref.read(categoryProvider.notifier).allButonClick();
                                
                              },
                              child: Container(
                                color:state.isClicAllButton==false? Color(0xffF4F4FF):Color(0xff6251DD),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.h, vertical: 10.w),
                                child: Text(
                                  'All',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Manrope',
                                      color:
                                         state.isClicAllButton==false? const Color.fromRGBO(9, 9, 55, 0.40):Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w,),
                            Expanded(
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: state.categories.length,
                                itemBuilder: (context, index) {
                                  final category = state.categories[index];

                                  return Padding(
                                    padding: EdgeInsets.only(right: 10.w),
                                    child: SizedBox(
                                      child: Bounceable(
                                        onTap: () {
                                          ref
                                              .read(categoryProvider.notifier)
                                              .buttonOnClick(index);
                                        },
                                        child: Container(
                                          color: index == state.selectedIndex
                                              ? Color(0xff6251DD)
                                              : Color(0xffF4F4FF),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.w),
                                          child: Text(
                                            category.name,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Manrope',
                                                color:
                                                    index == state.selectedIndex
                                                        ? Colors.white
                                                        : const Color.fromRGBO(
                                                            9, 9, 55, 0.40)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SearchField(
                      onChanged: (p0) {},
                    ),
                    SizedBox(
                        height: (MediaQuery.of(context).size.height / 1.7)
                            .toDouble(),
                        child: ListView.builder(
                            itemCount:state.isFilter==true?1: state.categories.length,
                            itemBuilder: (context, index) {
                           final category =state.isFilter==true? state.categories[state.selectedIndex!]:  state.categories[index];
                                                        
                              return Padding(
                                padding: EdgeInsets.only(bottom: 40.h),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20.w,
                                          right: 20.w,
                                          bottom: 20.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            category.name,
                                            style: TextStyle(
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.w700,
                                                color: const Color(0xff090937),
                                                fontFamily: 'Manrope'),
                                          ),
                                          Bounceable(
                                            onTap: () {
                                              context.pushRoute(
                                                CatologDetailRoute(
                                                    category: category),
                                              );
                                            },
                                            child: Text(
                                              "View All",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color:
                                                      const Color(0xffEF6B4A),
                                                  fontFamily: 'Manrope'),
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
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: ListView.builder(
                                            itemCount: category
                                                    .productList?.length ??
                                                0,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder:
                                                (contexts, productIndex) {
                                              final product = category
                                                  .productList?[productIndex];

                                              return Padding(
                                                padding: EdgeInsets.only(
                                                    right: 10.w),
                                                child: Container(
                                                  padding: EdgeInsets.only(
                                                      left: 10.w),
                                                  width: 257.w,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xffF4F4FF),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.sp),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      SizedBox(
                                                        height: 120.h,
                                                        width: 80.w,
                                                        child: Image.network(
                                                          product?.cover ?? "",
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 20.h,
                                                                left: 10.h),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              product?.name ??
                                                                  "",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      12.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: const Color(
                                                                      0xff090937),
                                                                  fontFamily:
                                                                      'Manrope'),
                                                            ),
                                                            SizedBox(
                                                              height: 5.h,
                                                            ),
                                                            Text(
                                                              product?.author ??
                                                                  "",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      10.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: const Color
                                                                          .fromRGBO(
                                                                      9,
                                                                      9,
                                                                      55,
                                                                      0.60),
                                                                  fontFamily:
                                                                      'Manrope'),
                                                            ),
                                                            SizedBox(
                                                              height: 44.h,
                                                            ),
                                                            Text(
                                                              "${product?.price ?? ""} \$",
                                                              style: TextStyle(
                                                                  color: const Color(
                                                                      0xff6251DD),
                                                                  fontSize:
                                                                      16.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontFamily:
                                                                      'Manrope'),
                                                            )
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              );
                                            }),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }))
                  ],
                )
              : Padding(
                  padding: EdgeInsets.symmetric(vertical: 400.h),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )),
    ));
  }
}



  //                                 final apiService = getIt<CategoryRepository>()
  //                                     .postProductImage(category.cover);
  //                                 return apiService;
  //                               });
  //                                                   final prouctImagesAsyncValue =
  //                                               imageRef.watch(productsImageProvider);