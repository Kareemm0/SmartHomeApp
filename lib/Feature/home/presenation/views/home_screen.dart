import 'package:flutter/material.dart';
import 'package:smart_home/core/utils/app_colors.dart';
import '../widget/custom_herizontal_list_view_body.dart';
import '../widget/custom_row_text.dart';
import '../widget/custom_vertical_list_view.dart';

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
                  return const CustomVerticalListView();
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
