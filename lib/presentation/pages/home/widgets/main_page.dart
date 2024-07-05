import 'package:cubtale_challenge/domain/search/i_search_repository.dart';
import 'package:cubtale_challenge/infrastructure/search/search_repository.dart';
import 'package:cubtale_challenge/presentation/pages/home/widgets/main_page_card.dart';
import 'package:cubtale_challenge/presentation/pages/home/widgets/result_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late Future data;
  late Map<String, dynamic> dataItems;
  Future fetchData() async {
    final ISearchRepository repository = SearchRepository();
    final result = await repository.findByDate('04-07-2024');

    result.fold(
      (failure) => throw Exception('Failed to fetch data'),
      (data) {
        dataItems = data;
      },
    );
  }

  // initstate
  @override
  void initState() {
    super.initState();
    data = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).highlightColor, width: 2),
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: MediaQuery.of(context).size.width / 2 - 30.w,
                  padding: EdgeInsets.all(30.w),
                  child: Column(
                    children: [
                      Text(
                        "TODAY'S NEW USERS",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      FutureBuilder(
                        future: data,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                                child: CircularProgressIndicator());
                          } else if (snapshot.hasError) {
                            return Center(
                              child: Text(
                                'An error occurred: ${snapshot.error}',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            );
                          } else if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return SizedBox(
                              height: 520.h,
                              child: Padding(
                                padding: EdgeInsets.only(top: 10.h),
                                child: ResultList(users: dataItems['users']),
                              ),
                            );
                          } else {
                            return const Center(
                                child: Text('No data available'));
                          }
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20.h),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2 - 30.w,
                  child: MainPageCard(
                      heading: 'Dummy Card 1',
                      content: SizedBox(height: 500.h)),
                )
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2 - 30.w,
                  child: MainPageCard(
                      heading: "Dummy Card 2",
                      content: SizedBox(height: 500.h)),
                ),
                SizedBox(width: 20.w),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2 - 30.w,
                  child: MainPageCard(
                      heading: "Dummy Card 3",
                      content: SizedBox(height: 500.h)),
                ),
              ],
            ),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}
