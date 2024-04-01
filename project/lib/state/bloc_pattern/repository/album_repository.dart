import 'package:project/state/bloc_pattern/data_provider/api_provider.dart';
import 'package:project/state/bloc_pattern/model/albums.dart';

class AlbumRespository {
  final AlbumApiProvider _albumApiProvider = AlbumApiProvider();

  Future<Albums> fetchAllAlbums() async => _albumApiProvider.fetchAlbumList();
}