import 'package:carousel_slider/carousel_slider.dart';
import 'package:dobrosport/common/app_colors.dart';
import 'package:dobrosport/common/text_styles.dart';
import 'package:dobrosport/common/widgets/custom_accent_button_widget.dart';
import 'package:dobrosport/common/widgets/white_scaffold_widget.dart';
import 'package:dobrosport/features/start/pages/currnt_activity_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int currentSelectType = 0;
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return WhiteScaffoldWidget(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Начни тренировку\nпрям сейчас!', style: TextStyles.titleH1.copyWith(color: Colors.black)),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Каждые 100 килокаллорий\nконвертируются в 10 рублей\nна благотворительность',
                  style: TextStyles.bodyRegular.copyWith(color: AppColors.grey)),
            ),
            const SizedBox(height: 24.0),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              width: double.infinity,
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: AppColors.grey3,
              ),
              child: Image.asset(
                'assets/images/main_logo.png',
                height: 190,
              ),
            ),
            const SizedBox(height: 48.0),
            Container(
                alignment: Alignment.center,
                child: Text(
                  'Тип активности',
                  style: TextStyles.medium22.copyWith(color: Colors.black),
                )),
            const SizedBox(height: 16.0),
            CarouselSlider(
              carouselController: carouselController,
              items: [
                _carouselItem(currentSelectType == 0, 'Пешая прогулка', 'assets/images/ped_step.png'),
                _carouselItem(currentSelectType == 1, 'Бег', 'assets/images/ped_run.png'),
                _carouselItem(currentSelectType == 2, 'Велопрогулка', 'assets/images/ped_bic.png'),
                _carouselItem(currentSelectType == 3, 'Силовая тренировка', 'assets/images/ped_gym.png'),
              ],
              options: CarouselOptions(
                  height: 90,
                  viewportFraction: 0.73,
                  onPageChanged: (index, _) {
                    setState(() {
                      currentSelectType = index;
                    });
                  }),
            ),
            const SizedBox(height: 32.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomAccentButtonWidget(
                  title: 'Начать тренировку',
                  onTap: () {
                    String type = '';
                    String image = '';
                    double k = 0;
                    switch (currentSelectType) {
                      case 0:
                        type = 'Пешая прогулка';
                        image = 'assets/images/ped_step.png';
                        k = 1;
                        break;
                      case 1:
                        type = 'Бег';
                        image = 'assets/images/ped_run.png';
                        k = 1.5;
                        break;
                      case 2:
                        type = 'Велопрогулка';
                        k = 2;
                        image = 'assets/images/ped_bic.png';
                        break;
                      case 3:
                        type = 'Силовая тренировка';
                        k = 2.5;
                        image = 'assets/images/ped_gym.png';
                        break;
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CurrentActivityScreen(
                          type: type,
                          image: image,
                          k: k,
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

_carouselItem(bool isSelected, String title, String image) {
  return Container(
    width: 270,
    margin: const EdgeInsets.symmetric(vertical: 3),
    padding: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16.0),
      border: isSelected
          ? Border.all(
              color: AppColors.accent,
              width: 3,
              strokeAlign: BorderSide.strokeAlignOutside,
            )
          : null,
      color: AppColors.grey3,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 54,
          width: 54,
          child: Image.asset(image),
        ),
        const SizedBox(width: 8.0),
        Text(
          title,
          style: TextStyles.bodyRegular.copyWith(color: Colors.black),
        ),
      ],
    ),
  );
}
