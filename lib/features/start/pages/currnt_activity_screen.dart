import 'dart:async';

import 'package:dobrosport/common/app_colors.dart';
import 'package:dobrosport/common/strings.dart';
import 'package:dobrosport/common/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class CurrentActivityScreen extends StatefulWidget {
  final String type, image;
  final double k;

  const CurrentActivityScreen({super.key, required this.type, required this.image, required this.k});

  @override
  State<CurrentActivityScreen> createState() => _CurrentActivityScreenState();
}

class _CurrentActivityScreenState extends State<CurrentActivityScreen> {
  late Timer timer;
  bool timerIsActive = false;
  int sec = 0;
  double rub = 0;
  double kcal = 0;

  @override
  void initState() {
    super.initState();
    timerIsActive = false;
    sec = 0;
    rub = 0;
    kcal = 0;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (timerIsActive) {
          sec++;
          if (sec % 5 == 0) {
            kcal += 1 * widget.k;
            rub += 0.02 * widget.k;
          }
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
    timerIsActive = false;
    sec = 0;
    rub = 0;
    kcal = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Color(0xFF2DDF5F), Color(0xFFA8E14A)],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.type, style: TextStyles.titleH1.copyWith(color: Colors.white)),
            const SizedBox(height: 8.0),
            Text(DateFormat('EEEE, dd MMMM').format(DateTime.now()), style: TextStyles.regular12.copyWith(color: Colors.white)),
            const SizedBox(height: 100.0),
            Center(
              child: Image.asset(widget.image, height: 200),
            ),
            const SizedBox(height: 16.0),
            Center(
              child: Text(
                _formattedTime(timeInSecond: sec),
                style: TextStyles.titleH1.copyWith(color: Colors.white),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    width: 172,
                    height: 100,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.white.withOpacity(0.3),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Вложено в добро',
                          style: TextStyles.bodyRegular.copyWith(color: Colors.white),
                        ),
                        Text(
                          '${rub.toStringAsFixed(2)} ₽',
                          style: TextStyles.medium24.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    width: 172,
                    height: 100,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.white.withOpacity(0.3),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Вложено',
                          style: TextStyles.bodyRegular.copyWith(color: Colors.white),
                        ),
                        Text(
                          '$kcal ккал',
                          style: TextStyles.medium24.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(126.0),
                      color: Colors.white,
                    ),
                    child: SvgPicture.asset('assets/icons/stop.svg'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      timerIsActive = !timerIsActive;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12.0),
                    margin: const EdgeInsets.only(bottom: 12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(126.0),
                      color: Colors.white,
                    ),
                    child: SvgPicture.asset(
                      !timerIsActive ? 'assets/icons/play_colored.svg' : 'assets/icons/pause.svg',
                      height: 64,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(126.0),
                      color: Colors.white,
                    ),
                    child: SvgPicture.asset('assets/icons/trash.svg'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

_formattedTime({required int timeInSecond}) {
  int sec = timeInSecond % 60;
  int min = (timeInSecond / 60).floor();
  String minute = min.toString().length <= 1 ? '0$min' : '$min';
  String second = sec.toString().length <= 1 ? '0$sec' : '$sec';
  return '$minute:$second';
}
