import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/authentication/login_screen.dart';
import 'package:tiktok_clone/features/authentication/widgets/auth_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/features/authentication/widgets/email_screen.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = "signUp";
  static const routeURL = "/";
  const SignUpScreen({super.key});

  void _onLoginTap(BuildContext context) async {
    context.pushNamed(LoginScreen.routeName);
  }

  void _onEmailTap(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const EmailScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: Sizes.size40,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Gaps.v80,
                Text(
                  '여행의 달인을 만나세요. 회원가입',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Gaps.v20,
                const Opacity(
                  opacity: 0.7,
                  child: Text(
                    '여달은 전 세계에 있는 여행의 달인으로부터 견적 받아오는 플랫폼입니다.',
                    style: TextStyle(
                      fontSize: Sizes.size16,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Gaps.v40,
                if (orientation == Orientation.portrait) ...[
                  GestureDetector(
                    onTap: () => _onEmailTap(context),
                    child: const AuthButton(
                      icon: FaIcon(FontAwesomeIcons.solidUser),
                      text: "Email을 통한 회원가입",
                    ),
                  ),
                  const AuthButton(
                      icon: FaIcon(FontAwesomeIcons.apple),
                      text: "Continue with Apple"),
                  const AuthButton(
                      icon: FaIcon(FontAwesomeIcons.apple),
                      text: "카카오 아이디 회원가입"),
                  const AuthButton(
                      icon: FaIcon(FontAwesomeIcons.apple), text: "여행의 달인 등록"),
                ],
                if (orientation == Orientation.landscape)
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => _onEmailTap(context),
                          child: const AuthButton(
                            icon: FaIcon(FontAwesomeIcons.solidUser),
                            text: "Email을 통한 회원가입",
                          ),
                        ),
                      ),
                      Gaps.h16,
                      const Expanded(
                        child: AuthButton(
                          icon: FaIcon(FontAwesomeIcons.apple),
                          text: "Continue with Apple",
                        ),
                      ),
                    ],
                  )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: const Color.fromARGB(255, 247, 242, 242),
          elevation: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Sizes.size1,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontSize: Sizes.size16,
                  ),
                ),
                Gaps.h5,
                GestureDetector(
                  onTap: () => _onLoginTap(context),
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: Sizes.size16,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
