import 'package:verticalvideos/domain/entities/video_post.dart';
import 'package:verticalvideos/domain/repositories/video_post_repository.dart';
import 'package:verticalvideos/infrastructure/datasources/local_video_datasource_impl.dart';

class VideoPostRepositoryimpl implements VideoPostRepository {
  final LocalVideoDatasourceImpl localVideoDatasourceImpl;

  VideoPostRepositoryimpl({
    required this.localVideoDatasourceImpl,
  });

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return localVideoDatasourceImpl.getTrendingVideosByPage(page);
  }
}
