import 'package:cintona/bloc/news_bloc/news_bloc.dart';
import 'package:cintona/repo/all_news_repo.dart';
import 'package:cintona/ui/home/home_screen.dart';
import 'package:cintona/utils/app_colors.dart';
import 'package:cintona/widget/edit_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController emailCtr;
  late TextEditingController passwordCtr;
  bool isLoading = false;
  bool _obsecureText = true;
  void _toggleObscured() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }

  @override
  void initState() {
    emailCtr = TextEditingController(text: "G@g.com");
    passwordCtr = TextEditingController(text: "dhsj");
    // loginBloc = context.read<LoginBloc>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Expanded(
            child: Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/images/login_background.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 40, right: 40, top: 250),
                        child: Image.asset(
                          "assets/icons/logo_w.png",
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30, top: 20),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: AppColors.whiteColor),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5, right: 30, left: 30),
                        child: Column(
                          children: [
                            EditText(
                              hint: "Enter Email Address",
                              controller: emailCtr,
                              inputformtters: [
                                LengthLimitingTextInputFormatter(60),
                                FilteringTextInputFormatter.deny(" "),
                                FilteringTextInputFormatter.deny("[]"),
                                FilteringTextInputFormatter.deny("["),
                                FilteringTextInputFormatter.deny("]"),
                                FilteringTextInputFormatter.deny("^"),
                                FilteringTextInputFormatter.deny(""),
                                FilteringTextInputFormatter.deny("`"),
                                FilteringTextInputFormatter.deny("/"),
                                // FilteringTextInputFormatter.deny("\"),
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9a-zA-z._@]')),
                                FilteringTextInputFormatter.deny(RegExp(r"/"))
                              ],
                              validator: (value) {
                                if (value?.trim().isEmpty ?? true) {
                                  return "Please enter email address";
                                } else if (!RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value ?? "")) {
                                  return "Enter valid email address";
                                }
                                return null;
                              },
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 15, right: 30, left: 30),
                        child: Column(
                          children: [
                            EditText(
                              controller: passwordCtr,
                              hint: "Enter Password",
                              obsecureText: _obsecureText,
                              textInputType: TextInputType.visiblePassword,
                              inputformtters: [
                                FilteringTextInputFormatter.deny(' '),
                                LengthLimitingTextInputFormatter(16)
                              ],
                              validator: (value) {
                                if (value == "" ||
                                    (value?.trim().isEmpty ?? true)) {
                                  return "Please enter password";
                                }
                                return null;
                              },
                              suffixIcon: GestureDetector(
                                onTap: _toggleObscured,
                                child: Transform.scale(
                                  scale: 0.5,
                                  child: ImageIcon(
                                    _obsecureText
                                        ? AssetImage(
                                            "assets/icons/hide.png",
                                          )
                                        : AssetImage(
                                            "assets/icons/view.png",
                                          ),
                                    size: 12,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 30, left: 30, top: 5),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          alignment: Alignment.topRight,
                          child: TextButton(
                            child: Center(
                              child: Text('Sign in',
                              textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .button
                                      ?.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700)),
                            ),
                            onPressed: isLoading
                                ? null
                                : () {
                                    FocusNode? focusNode =
                                        FocusManager.instance.primaryFocus;
                                    if (focusNode != null) {
                                      if (focusNode.hasPrimaryFocus) {
                                        focusNode.unfocus();
                                      }
                                    }
                                    if (formKey.currentState?.validate() ??
                                        false) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BlocProvider(
                                                    create: (context) =>
                                                        AllNewsBloc(
                                                            repo:
                                                                AllNewsImpl()),
                                                    child: HomeScreen(),
                                                  )));
                                      // loginBloc.add(
                                      //   LoginSubmitEvent(
                                      //     // email: emailCtr.text.trim(),
                                      //     // password: passwordCtr.text.trim(),
                                      //     // fcmToken: '1',
                                      //     // userDeviceId: '1',
                                      //     authModel: AuthModel(
                                      //       password: passwordCtr.text.trim(),
                                      //       email: emailCtr.text.trim(),
                                      //     ),
                                      //   ),
                                      // );
                                      // CToast.instance.showSuccess(context,
                                      //     "Data added in ( RegisterSubmitEvent )");
                                    }
                                    // if (_form.currentState?.validate() ?? false) {
                                    //   RegisterModel regModel =
                                    //       _createRegisterModel()!;
                                    //   if (_createRegisterModel != null) {
                                    //     registerBloc.add(
                                    //       RegisterSubmitEvent(
                                    //         registerModel: regModel,
                                    //       ),
                                    //     );
                                    //     CToast.instance.showSuccess(context,
                                    //         "Data added in ( RegisterSubmitEvent )");
                                    //   } else {
                                    //     CToast.instance
                                    //         .showError(context, "Data not added");
                                    //   }
                                    // }
                                  },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: (() {
                          setState(() {
                            // emailCtr.clear();
                            // passwordctr.clear();
                          });
                          // Navigator.pushNamed(
                          //         context, ForgetPassword.forgetPasswordUrl)
                          //     .then((value) {
                          //   formKey.currentState?.reset();
                          // });
                        }),
                        child: Container(
                          padding: EdgeInsets.only(right: 30, top: 0.2),
                          alignment: Alignment.topRight,
                          child: Text('Forgot Password?',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      // fontFamily: KSMFontFamily.robotoRgular,
                                      color: AppColors.blackColor)),
                        ),
                      ),
                      Text(
                        "OR",
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColors.blackColor.withOpacity(0.4)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/fb.png"),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset("assets/icons/google.png"),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset("assets/icons/likeding_white_bg.png")
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Text(
                            "No account?",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: AppColors.whiteColor),
                          )),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              child: Text(
                            "Create one.",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                                color: AppColors.blackColor),
                          ))
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
