import 'package:auto_route/annotations.dart';
import 'package:book_store/src/common_wigets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
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
                        Image.asset(
                          'assets/images/Picture.png',
                          width: 150.w,
                          height: 225.h,
                        ),
                        SizedBox(
                          width: 56.w,
                        ),
                        Container(
                            height: 44.h,
                            width: 44.w,
                            decoration: BoxDecoration(
                              color: const Color(0xffF4F4FF),
                              borderRadius: BorderRadius.circular(35.sp),
                            ),
                            child: const Center(
                                child: Icon(
                              Icons.favorite_border_outlined,
                              color: Color(0xff6251DD),
                            )))
                      ],
                    ),
                  ),
                  Text(
                    "Dune",
                    style: TextStyle(color: const Color(0xff090937), fontSize: 20.sp, fontWeight: FontWeight.w700, fontFamily: 'Manrope'),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Frank Herbert",
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
                      'Dune is set in the distant future amidst a feudal interstellar society in which various noble houses control planetary fiefs. It tells the story of young Paul Atreides, whose family accepts the stewardship of the planet Arrakis. While the planet is an inhospitable and sparsely populated desert wasteland, it is the only source of melange, or "spice", a drug that...',
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
                            "87,75 \$",
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
