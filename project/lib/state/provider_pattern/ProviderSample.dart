import 'package:flutter/material.dart';
import 'package:project/state/provider_pattern/provider/album_provider.dart';
import 'package:project/state/provider_pattern/view/album_view.dart';
import 'package:provider/provider.dart';

class ProviderSample extends StatefulWidget {
  const ProviderSample({super.key});

  @override
  State<ProviderSample> createState() => _ProviderSampleState();
}

class _ProviderSampleState extends State<ProviderSample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<AlbumProvider>(
        create: (context) => AlbumProvider(),
        child: const AlbumView(),
      ),
    );
  }
}