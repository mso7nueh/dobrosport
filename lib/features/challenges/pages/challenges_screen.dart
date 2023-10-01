import 'package:dobrosport/common/text_styles.dart';
import 'package:dobrosport/common/widgets/white_scaffold_widget.dart';
import 'package:flutter/material.dart';

class ChallengesScreen extends StatefulWidget {
  const ChallengesScreen({super.key});

  @override
  State<ChallengesScreen> createState() => _ChallengesScreenState();
}

class _ChallengesScreenState extends State<ChallengesScreen> {
  @override
  Widget build(BuildContext context) {
    return WhiteScaffoldWidget(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Челленджи', style: TextStyles.titleH1.copyWith(color: Colors.black)),
            const SizedBox(height: 32.0),
            Image.asset('assets/images/challenge_description.png'),
            const SizedBox(height: 32.0),
            Text('Спортивные товары', style: TextStyles.medium22.copyWith(color: Colors.black)),
            const SizedBox(height: 16.0),
            Image.asset('assets/images/firstChallengeBackgroundImage.png'),
            const SizedBox(height: 32.0),
            Text('Фитнес', style: TextStyles.medium22.copyWith(color: Colors.black)),
            const SizedBox(height: 16.0),
            Image.asset('assets/images/secondChallengeBackgroundImage.png'),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
