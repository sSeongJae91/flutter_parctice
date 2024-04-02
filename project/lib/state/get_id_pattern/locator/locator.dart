

import 'package:get_it/get_it.dart';
import 'package:project/state/get_id_pattern/service/album_service.dart';

GetIt locator = GetIt.instance;

initLocator() {
  locator.registerLazySingleton<AlbumService>(() => AlbumServiceImplementation());
}