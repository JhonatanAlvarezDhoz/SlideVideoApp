import 'package:verticalvideos/domain/datasource/video_pots_datasource.dart';
import 'package:verticalvideos/domain/entities/video_post.dart';
import 'package:verticalvideos/infrastructure/models/local_video_model.dart';
import 'package:verticalvideos/shared/data/local_video_post.dart';

class LocalVideoDatasourceImpl implements VideoPostDataSource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();
    return newVideos;
  }
}
