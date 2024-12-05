import 'package:classworkflutter/view/dashboard_view.dart';
import 'package:classworkflutter/view/row_view.dart';
import 'package:flutter/material.dart';
import 'package:classworkflutter/view/row_view.dart';
import 'package:classworkflutter/view/container_view.dart';
import 'package:classworkflutter/view/loadimage_view.dart';

import 'package:classworkflutter/view/flexible_expanded_view.dart';
import 'package:classworkflutter/view/snackbar_view.dart';
import 'package:classworkflutter/view/list_grid_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListGridView(),
    );
  }
}
