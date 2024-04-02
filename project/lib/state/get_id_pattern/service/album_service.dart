import 'dart:convert';

import 'package:project/state/get_id_pattern/model/album.dart';
import 'package:http/http.dart' as http;

abstract class AlbumService {
  Future<List<Album>> fetchAlbums();
}

class AlbumServiceImplementation implements AlbumService {

  @override
  Future<List<Album>> fetchAlbums() async {

    try {
      final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/albums"));
      final List<Album> result = jsonDecode(response.body).map<Album>((json) => Album.fromJSON(json)).toList();
      print(result);
      return result;
    } catch(e) {
      throw(e.toString());
    }
  }   
}