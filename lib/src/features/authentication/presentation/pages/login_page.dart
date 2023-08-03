import 'package:auto_route/auto_route.dart';
import 'package:book_store/src/common_wigets/login_button.dart';
import 'package:book_store/src/features/authentication/presentation/login_text_field.dart';
import 'package:book_store/src/features/authentication/presentation/riverpod/login_riverpod.dart';
import 'package:book_store/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController(text: '');
    final passwordController = useTextEditingController(text: '');
    final state = ref.watch(loginProvider);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 75.h, bottom: 30),
          child: Column(
            children: [
              AuthLogo(),
              Padding(
                padding: EdgeInsets.only(top: 120.h, right: 172.w),
                child: Image.asset(
                  "assets/images/Union.png",
                  width: 207.w,
                  height: 52.h,
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              LoginTextField(
                controller: emailController,
                title: "E-mail",
                hintText: 'john@mail.com',
                isObscureTxt: false,
              ),
              SizedBox(
                height: 22.h,
              ),
              LoginTextField(
                controller: passwordController,
                title: 'Password',
                hintText: "Password",
                isObscureTxt: true,
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 11.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          side: BorderSide(color: const Color(0xff6251DD), width: 2.sp),
                          value: false,
                          onChanged: (value) {},
                        ),
                        Text(
                          "Remember Me",
                          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, color: const Color(0xff6251DD), fontFamily: 'Manrope'),
                        )
                      ],
                    ),
                    Bounceable(
                      onTap: () {
                        context.pushRoute(const RegisterRoute());
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(color: const Color(0xff6251DD), fontSize: 12.sp, fontWeight: FontWeight.w700, fontFamily: "Manrope"),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
                child: LoginButton(
                  onTap: () async {
                    context.pushRoute(CatalogRoute());
                    // await ref.read(loginProvider.notifier).login();
                    // ref
                    //     .read(loginProvider)
                    //     .loginResult
                    //     .toNullable()!
                    //     .fold((failure) => print('Girişte sorun var'), (success) => context.pushRoute(HomeRoute()));
                  },
                  text: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w600, fontFamily: "Manrope"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AuthLogo extends StatelessWidget {
  const AuthLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: (MediaQuery.of(context).size.width - 100) / 2),
      child: Image.asset(
        "assets/images/Logo.png",
        width: 98.w,
        height: 63.h,
      ),
    );
  }
}
