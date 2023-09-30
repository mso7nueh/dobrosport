import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WhiteScaffoldWidget extends StatelessWidget {
  final Widget body;

  const WhiteScaffoldWidget({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
      ),
      body: body,
    );
  }
}
