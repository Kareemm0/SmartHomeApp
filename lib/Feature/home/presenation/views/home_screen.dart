import 'package:flutter/material.dart';
import 'package:smart_home/core/utils/app_colors.dart';
import 'package:smart_home/core/utils/app_images.dart';

import '../widget/custom_herizontal_list_view_body.dart';
import '../widget/custom_row_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Smart Home",
          style: TextStyle(
            color: AppColors.wihte,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const CustomRowText(
              text: "Your Rooms",
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.02,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .12,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const CustomHerizontalListViewBody();
                },
                itemCount: 10,
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.02,
            ),
            const CustomRowText(
              text: "All Devices",
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.02,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.02,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: AppColors.loginButton,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pir\nSensor",
                              style: TextStyle(
                                color: AppColors.wihte,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Living Room",
                              style: TextStyle(
                                color: AppColors.authText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Switch(
                          value: true,
                          onChanged: (val) {},
                          activeTrackColor: AppColors.authText,
                        )
                      ],
                    ),
                  );
                },
                itemCount: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
