// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50],
      child: const Center(
        child: SpinKitSpinningLines(
          color: Colors.purple,
          size: 50.0,),
      ),
    );
  }
}