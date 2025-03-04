import 'package:flutter/material.dart';
import 'package:object_detection/models/screen_params.dart';
import 'package:object_detection/ui/detector_widget.dart';

/// [HomeView] stacks [DetectorWidget]
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenParams.screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      key: GlobalKey(),
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: Text(
        "Object detection with TensorFlowLite",
        style: TextStyle(fontSize: 15),
      )
          ),
      body: const DetectorWidget(),
    );
  }
}
