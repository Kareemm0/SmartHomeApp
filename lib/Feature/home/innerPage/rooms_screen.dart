import 'package:flutter/material.dart';
import 'package:smart_home/core/utils/app_images.dart';

import '../../../core/utils/app_colors.dart';

class RoomsScreen extends StatelessWidget {
  const RoomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.wihte,
          ),
          onPressed: () {},
        ),
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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Bed Room",
              style: TextStyle(
                color: AppColors.wihte,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "3 Devices",
              style: TextStyle(color: AppColors.authText),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.02,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Container(
                      clipBehavior: Clip.antiAlias,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                          color: AppColors.loginButton,
                          borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  padding: const EdgeInsets.all(8),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.auth,
                                  ),
                                  child: Image.asset(AppImages.walk)),
                              const Text(
                                "Conditioner",
                                style: TextStyle(
                                  color: AppColors.wihte,
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
                  separatorBuilder: (context, index) => SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.02,
                      ),
                  itemCount: 3),
            )
          ],
        ),
      ),
    );
  }
}
