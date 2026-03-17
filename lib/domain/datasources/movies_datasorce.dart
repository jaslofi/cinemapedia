

import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MoviesDatasorce {

  Future<List<Movie>> getNowPlaying({ int page = 1});
}