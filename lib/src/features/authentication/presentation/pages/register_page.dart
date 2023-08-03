import 'package:auto_route/auto_route.dart';
import 'package:book_store/src/common_wigets/login_button.dart';
import 'package:book_store/src/features/authentication/presentation/pages/login_page.dart';
import 'package:book_store/src/features/authentication/presentation/login_text_field.dart';
import 'package:book_store/src/features/authentication/presentation/riverpod/register_riverpod.dart';
import 'package:book_store/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class RegisterPage extends HookConsumerWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController(text: '');
    final emailController = useTextEditingController(text: '');
    final passwordController = useTextEditingController(text: '');
        final state = ref.watch(registerProvider);
        final provider = ref.watch(registerProvider.notifier);
        


    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 75.h, bottom: 30.h),
              child: const AuthLogo(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.h, left: 20.w),
              child: Text(
                "Welcome",
                style: TextStyle(color: const Color.fromRGBO(9, 9, 55, 0.60), fontSize: 16.sp, fontWeight: FontWeight.w600, fontFamily: 'Manrope'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 20.w, bottom: 75.h),
              child: Text(
                "Register an account",
                style: TextStyle(color: const Color(0xff090937), fontSize: 20.sp, fontWeight: FontWeight.w700, fontFamily: 'Manrope'),
              ),
            ),
            LoginTextField(
              title: "Name",
              hintText: "John Doe",
              isObscureTxt: false,
              controller: nameController,
            ),
            SizedBox(
              height: 25.h,
            ),
            LoginTextField(
              title: "E-mail",
              hintText: "john@mail.com",
              isObscureTxt: false,
              controller: emailController,
            ),
            const SizedBox(
              height: 25,
            ),
            LoginTextField(
              title: "Password",
              hintText: "Password",
              isObscureTxt: true,
              controller: passwordController,
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0.w, top: 10.h),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Bounceable(
                  onTap: () {
                    context.pushRoute(const LoginRoute());
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: const Color(0xff6251DD), fontSize: 12.sp, fontWeight: FontWeight.w700, fontFamily: 'Manrope'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
              child: Consumer(builder: (context, ref, child) {
                return LoginButton(
                  onTap: () async {
                    await provider.userRegister(
                      name: nameController.value.text, 
                      email: emailController.value.text, 
                      password: passwordController.value.text);
                      

                  },
                  text: Text(
                    'Register',
                    style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w600, fontFamily: "Manrope"),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
