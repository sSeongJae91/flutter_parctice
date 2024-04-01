import 'package:project/state/bloc_pattern/model/albums.dart';
import 'package:project/state/bloc_pattern/repository/album_repository.dart';
import 'package:rxdart/rxdart.dart';

class AlbumBloc {
  final AlbumRespository _albumRespository = AlbumRespository();
  final PublishSubject<Albums> _albumFetcher = PublishSubject<Albums>();

  Stream<Albums> get allAlbums => _albumFetcher.stream;

  Future<void> fetchAllAlbums() async {
    Albums albums = await _albumRespository.fetchAllAlbums();
    _albumFetcher.sink.add(albums);
  }

  dispose() {
    _albumFetcher.close();
  }
}