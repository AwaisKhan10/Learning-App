import 'package:flutter/material.dart';
import 'package:learning/core/constant/auth_decoration.dart';
import 'package:learning/core/constant/colors.dart';
import 'package:learning/core/constant/strings.dart';
import 'package:learning/core/constant/text_style.dart';
import 'package:learning/ui/screens/root/root_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  bool isLogin = true;
  TabController? _tabController;

  final _loginFormKey = GlobalKey<FormState>();
  final _signupFormKey = GlobalKey<FormState>();

  initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  onChange() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("$staticAssets/login_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              margin: EdgeInsets.all(16),

              decoration: BoxDecoration(color: whiteColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: pinkColor,
                    child: Image.asset("$iconsAssets/logoo.png", scale: 3),
                  ),

                  TabBar(
                    controller: _tabController,
                    indicatorColor: pinkColor,
                    indicatorWeight: 6,
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerHeight: 0,
                    dividerColor: Colors.blue,
                    unselectedLabelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: blackColor,
                    ),
                    labelColor: pinkColor,

                    unselectedLabelColor: blackColor,
                    tabs: [
                      Tab(child: Text("Login")),
                      Tab(child: Text("SingUp")),
                    ],
                  ),
                  SizedBox(height: 16),

                  SizedBox(
                    height: 400,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        ///
                        /// Login
                        ///
                        Form(
                          key: _loginFormKey,
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: authInputDecoration.copyWith(
                                  hintText: "User Name",
                                ),

                                validator: (value) {
                                  if (value!.isEmpty || value == null) {
                                    return "Please enter your UserName";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              SizedBox(height: 16),
                              TextFormField(
                                decoration: authInputDecoration.copyWith(
                                  hintText: "Password ",
                                ),
                                validator: (value) {
                                  if (value!.isEmpty || value == null) {
                                    return "Please enter your password";
                                  } else if (value.length <= 7) {
                                    return "Please enter your password must be 8 characters";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              SizedBox(height: 16),
                              InkWell(
                                onTap: () {
                                  if (_loginFormKey.currentState!.validate()) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => RootScreen(),
                                      ),
                                    );
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: pinkColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    "Login",
                                    style: style16B.copyWith(color: whiteColor),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        ///
                        /// Singup
                        ///
                        Form(
                          key: _signupFormKey,
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: authInputDecoration.copyWith(
                                  hintText: "User Name",
                                ),
                              ),
                              SizedBox(height: 16),
                              TextFormField(
                                decoration: authInputDecoration.copyWith(
                                  hintText: "Email ",
                                ),
                              ),

                              TextFormField(
                                decoration: authInputDecoration.copyWith(
                                  hintText: "Password ",
                                ),
                              ),
                              SizedBox(height: 16),
                              Container(
                                padding: EdgeInsets.all(10),
                                alignment: Alignment.center,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: pinkColor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  "Singup",
                                  style: style16B.copyWith(color: whiteColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
