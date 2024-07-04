import 'package:cubtale_challenge/application/auth/auth_cubit.dart';
import 'package:cubtale_challenge/presentation/pages/home/widgets/main_page.dart';
import 'package:cubtale_challenge/presentation/pages/home/widgets/nav_bar_home.dart';
import 'package:cubtale_challenge/presentation/pages/home/widgets/profile_dropdown.dart';
import 'package:cubtale_challenge/presentation/pages/home/widgets/search_page.dart';
import 'package:cubtale_challenge/presentation/reusable_components/buttons/nav_bar_button.dart';
import 'package:cubtale_challenge/presentation/routing/router/router.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showMenu = false;
  Widget _body = MainPage();
  final List<Widget> _screens = [
    const SearchPage(type: 'Mail'),
    const SearchPage(type: 'ID'),
    const SearchPage(
      type: 'Date',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(listener: (context, state) {
      state.maybeMap(
        unauthenticated: (_) => AutoRouter.of(context).replace(LoginRoute()),
        orElse: () {},
      );
    }, child: Scaffold(
      extendBodyBehindAppBar: false,
            body: SafeArea(
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Theme.of(context).cardColor,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          // navbar
                          Container(
                            padding: EdgeInsets.all(20.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(40.w),
                              ),
                              color: Theme.of(context).primaryColor,
                            ),
                            // height: 60.h,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _body = MainPage();
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      Image.asset(
                                          'assets/images/cubtale_logo.png',
                                          height: 100.h),
                                      Image.asset(
                                          'assets/images/cubtale_watermark.png',
                                          height: 100.h),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    NavBarButton(
                                        onPressed: () {
                                          setState(() {
                                            _body = _screens[0];
                                          });
                                        },
                                        text: "Search by Mail"),
                                    Image.asset(
                                        'assets/images/vertical_divider.png',
                                        height: 60.h),
                                    NavBarButton(
                                        onPressed: () {
                                          setState(() {
                                            _body = _screens[1];
                                          });
                                        },
                                        text: "Search by ID"),
                                    Image.asset(
                                        'assets/images/vertical_divider.png',
                                        height: 60.h),
                                    NavBarButton(
                                        onPressed: () {
                                          setState(() {
                                            _body = _screens[2];
                                          });
                                        },
                                        text: "Search by Date"),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      showMenu = !showMenu;
                                    });
                                  },
                                  child: Image.asset(
                                      'assets/images/menu_burger.png',
                                      height: 60.h),
                                ),
                              ],
                            ),
                          ),
                          _body,
                        ],
                      ),
                    ),
                  ),
                  showMenu
                      ? Positioned(
                          right: 0.w, top: 90.w, child: ProfileDropdown())
                      : SizedBox(),
                ],
              ),
            ),
          ));
  }
}
