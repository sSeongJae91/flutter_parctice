import 'package:flutter/material.dart';
import 'package:project/mvvm_design_pattern/view/album_view.dart';
import 'package:project/mvvm_design_pattern/view_model/album_view_model.dart';
import 'package:provider/provider.dart';

class MVVMSalple extends StatelessWidget {
  const MVVMSalple({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<AlbumViewModel>(
        create: (context) => AlbumViewModel(),
        child: const AlbumView(),
      ),
    );
  }
}