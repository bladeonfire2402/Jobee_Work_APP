import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_test/Controller/featuredCart__controller.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/Utils/Constants/image__constants.dart';
import 'package:my_app_test/components/ImageComponents/customImage.dart';
import 'package:my_app_test/components/TitleComponents/customTitle.dart';
import 'package:my_app_test/models/JobModels/JobModel.dart';

class Recommendjobcard extends StatefulWidget {
  final JobModel Job;
  final int index;

  Recommendjobcard({super.key, required this.Job, required this.index});

  @override
  _RecommendjobcardState createState() => _RecommendjobcardState();
}

class _RecommendjobcardState extends State<Recommendjobcard> {
  Color? bgColor = ColorConstants.thirdlyColor;
  late int descion;

  // Handle background color change based on decision
  Color handleBgColor(int descion) {
    switch (descion) {
      case 1:
        return ColorConstants.nicetryColor;
      case 2:
        return ColorConstants.fithyColor;
      case 3:
        return ColorConstants.sixtyColor;
      case 4:
        return ColorConstants.meomeoColor;
      case 5:
        return ColorConstants.bruhColor;
      default:
        return ColorConstants.fourthlyColor;
    }
  }

  // Determine decision based on index
  int handleDesicion(int index) {
    if (index > 5) {
      return index % 5;
    } else {
      return index;
    }
  }

  @override
  void initState() {
    super.initState();
    // Set the decision value based on the index and update background color
    descion = handleDesicion(widget.index);
    bgColor = handleBgColor(descion);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: Column(children: [Text('${widget.index}')]),
        ),
      ],
    );
  }
}
