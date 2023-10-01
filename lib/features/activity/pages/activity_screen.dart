import 'package:dobrosport/common/app_colors.dart';
import 'package:dobrosport/common/strings.dart';
import 'package:dobrosport/common/text_styles.dart';
import 'package:dobrosport/common/widgets/white_scaffold_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  final int kcal = 752;

  @override
  Widget build(BuildContext context) {
    var pieData = [_PieData('$kcal ккал', kcal)];
    return WhiteScaffoldWidget(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(Strings.activity, style: TextStyles.titleH1.copyWith(color: Colors.black)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: Image.asset(
                      'assets/images/profile.png',
                      height: 40,
                      width: 40,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(DateFormat('EEEE, dd MMMM').format(DateTime.now()), style: TextStyles.regular12.copyWith(color: AppColors.grey)),
            ),
            const SizedBox(height: 32.0),
            Container(
              margin: const EdgeInsets.only(left: 16.0, right: 16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: AppColors.grey3,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Вложено в добро', style: TextStyles.bodyRegular.copyWith(color: Colors.black)),
                      const SizedBox(height: 4.0),
                      Text('167 ₽', style: TextStyles.medium24.copyWith(color: AppColors.accent)),
                      const SizedBox(height: 12.0),
                      Text('Выполнено', style: TextStyles.bodyRegular.copyWith(color: Colors.black)),
                      const SizedBox(height: 4.0),
                      Text('$kcal / 2000\nккал', style: TextStyles.medium24.copyWith(color: AppColors.accent)),
                    ],
                  ),
                  SizedBox(
                    height: 160,
                    width: 160,
                    child: SfCircularChart(
                      margin: EdgeInsets.zero,
                      legend: const Legend(isVisible: false, padding: 0, width: '0', height: '0', iconHeight: 0, iconWidth: 0),
                      palette: const [AppColors.accent],
                      series: <RadialBarSeries<_PieData, String>>[
                        RadialBarSeries(
                          trackColor: AppColors.accent,
                          trackOpacity: 0.15,
                          maximumValue: 2000,
                          radius: '80',
                          innerRadius: '48',
                          cornerStyle: CornerStyle.bothCurve,
                          dataSource: pieData,
                          xValueMapper: (_PieData data, _) => data.xData,
                          yValueMapper: (_PieData data, _) => data.yData,
                          dataLabelSettings: const DataLabelSettings(isVisible: false),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                Strings.challenges,
                style: TextStyles.medium22.copyWith(color: Colors.black),
              ),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                Strings.challengesDescription,
                style: TextStyles.bodyRegular.copyWith(color: AppColors.grey),
              ),
            ),
            const SizedBox(height: 16.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 16.0),
                  Image.asset(
                    'assets/images/firstChallengeBackgroundImage.png',
                    height: 220,
                  ),
                  const SizedBox(width: 8.0),
                  Image.asset(
                    'assets/images/secondChallengeBackgroundImage.png',
                    height: 220,
                  ),
                  const SizedBox(width: 16.0),
                ],
              ),
            ),
            const SizedBox(height: 32.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Тренировки',
                style: TextStyles.medium22.copyWith(color: Colors.black),
              ),
            ),
            const SizedBox(height: 16.0),
            _trainingListTile('assets/images/ped_step.png', 'Пешая прогулка', '29.09.23', '121', '6'),
            const SizedBox(height: 8.0),
            _trainingListTile('assets/images/ped_run.png', 'Бег', '28.09.23', '521', '17'),
            const SizedBox(height: 8.0),
            _trainingListTile('assets/images/ped_bic.png', 'Велопрогулка', '30.09.23', '247', '11'),
            const SizedBox(height: 8.0),
            _trainingListTile('assets/images/ped_gym.png', 'Силовая тренировка', '28.09.23', '300', '9'),
            const SizedBox(height: 32.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Достижения',
                style: TextStyles.medium22.copyWith(color: Colors.black),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: AppColors.grey3,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/step_forward.png',
                        height: 52,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        'Шаг вперёд',
                        style: TextStyles.medium12.copyWith(color: Colors.purple),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        '3000 из 10000 шагов',
                        style: TextStyles.regular10.copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          child: Image.asset(
                        'assets/images/first_sto.png',
                        height: 52,
                      )),
                      const SizedBox(height: 8.0),
                      Text(
                        'Первая сотня',
                        style: TextStyles.medium12.copyWith(color: Colors.green),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        '12 ₽ из 100 ₽',
                        style: TextStyles.regular10.copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/perfect_week.png',
                        height: 52,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        'Идеальная неделя',
                        style: TextStyles.medium12.copyWith(color: Colors.orange),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        '5 из 7 дней',
                        style: TextStyles.regular10.copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}

class _PieData {
  _PieData(this.xData, this.yData, [this.text = '']);

  final String xData;
  final num yData;
  final String text;
}

_trainingListTile(String image, String type, String date, String kcal, String rubs) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      tileColor: AppColors.grey3,
      contentPadding: const EdgeInsets.all(16.0),
      leading: Image.asset(image),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          type,
          style: TextStyles.bodyRegular.copyWith(color: Colors.black),
        ),
      ),
      trailing: Text(
        date,
        style: TextStyles.regular10.copyWith(color: AppColors.grey),
      ),
      titleAlignment: ListTileTitleAlignment.top,
      subtitle: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        decoration: BoxDecoration(
          color: AppColors.accent,
          borderRadius: BorderRadius.circular(32.0),
        ),
        child: Wrap(
          children: [
            SvgPicture.asset(
              'assets/icons/goodness.svg',
              color: Colors.white,
              height: 14,
            ),
            const SizedBox(width: 8.0),
            Text(
              '$kcal ккал',
              style: TextStyles.regular14.copyWith(color: Colors.white),
            ),
            const SizedBox(width: 8.0),
            SvgPicture.asset(
              'assets/icons/arrow_right.svg',
              color: Colors.white,
              height: 14,
            ),
            const SizedBox(width: 8.0),
            Text(
              '$rubs ₽',
              style: TextStyles.regular14.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    ),
  );
}
