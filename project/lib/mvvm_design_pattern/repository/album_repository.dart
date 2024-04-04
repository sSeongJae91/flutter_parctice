import 'package:project/mvvm_design_pattern/data_source/data_source.dart';
import '../model/album.dart';

class AlbumRepository {
  final DataSource _dataSource = DataSource();

  Future<List<Album>> getAlbumList() {
    return _dataSource.getAlbumList();
  }
}