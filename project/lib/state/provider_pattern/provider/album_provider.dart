import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:project/state/provider_pattern/model/album.dart';
import 'package:http/http.dart' as http;

class AlbumProvider with ChangeNotifier {
  final List<Album> _albumList = List.empty(growable: true);

  List<Album> getAlbumList() {
    _fetchAlbums();
    return _albumList;
  }

  void _fetchAlbums() async {
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/albums"));

    final List<Album> result = jsonDecode(response.body).map<Album>((json) => Album.fromJSON(json)).toList();

    _albumList.clear();
    _albumList.addAll(result);
    notifyListeners();
  }
}