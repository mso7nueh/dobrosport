import 'package:dobrosport/common/text_styles.dart';
import 'package:dobrosport/common/widgets/white_scaffold_widget.dart';
import 'package:flutter/material.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  @override
  Widget build(BuildContext context) {
    return WhiteScaffoldWidget(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Рейтинг', style: TextStyles.titleH1.copyWith(color: Colors.black)),
            Image.asset('assets/images/rating_1.png'),
            Image.asset('assets/images/rating_2.png'),
            Image.asset('assets/images/rating_3.png'),
          ],
        ),
      ),
    );
  }
}
