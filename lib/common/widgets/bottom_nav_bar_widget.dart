import 'package:dobrosport/common/app_colors.dart';
import 'package:dobrosport/common/icon_urls.dart';
import 'package:dobrosport/common/strings.dart';
import 'package:dobrosport/common/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class BottomNavBarWidget extends StatefulWidget {
  final Widget child;

  const BottomNavBarWidget({super.key, required this.child});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(
            () {
              if (currentIndex != index) {
                currentIndex = index;
              }
              switch (currentIndex) {
                case 0:
                  context.goNamed('activityScreen');
                  break;
                case 1:
                  context.goNamed('goodnessScreen');
                  break;
                case 2:
                  context.goNamed('startScreen');
                  break;
                case 3:
                  context.goNamed('ratingScreen');
                  break;
                case 4:
                  context.goNamed('challengesScreen');
                  break;
              }
            },
          );
        },
        selectedItemColor: AppColors.accent,
        unselectedItemColor: AppColors.grey,
        currentIndex: currentIndex,
        backgroundColor: Colors.white,
        selectedLabelStyle: TextStyles.regular10.copyWith(color: AppColors.accent),
        unselectedLabelStyle: TextStyles.regular10.copyWith(color: AppColors.grey),
        items: [
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: SvgPicture.asset(
                  IconUrls.activity,
                  color: currentIndex == 0 ? AppColors.accent : AppColors.grey,
                ),
              ),
              label: Strings.activity),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: SvgPicture.asset(
                  IconUrls.goodness,
                  color: currentIndex == 1 ? AppColors.accent : AppColors.grey,
                ),
              ),
              label: Strings.goodness),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: SvgPicture.asset(
                  IconUrls.start,
                  color: currentIndex == 2 ? AppColors.accent : AppColors.grey,
                ),
              ),
              label: Strings.start),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: SvgPicture.asset(
                  IconUrls.rating,
                  color: currentIndex == 3 ? AppColors.accent : AppColors.grey,
                ),
              ),
              label: Strings.rating),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: SvgPicture.asset(
                  IconUrls.challenges,
                  color: currentIndex == 4 ? AppColors.accent : AppColors.grey,
                ),
              ),
              label: Strings.challenges)
        ],
      ),
      body: widget.child,
    );
  }
}
