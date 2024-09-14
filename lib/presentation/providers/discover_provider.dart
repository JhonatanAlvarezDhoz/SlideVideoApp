import 'package:flutter/material.dart';
import 'package:verticalvideos/domain/entities/video_post.dart';
import 'package:verticalvideos/infrastructure/repositories/video_post_repository_impl.dart';

class DiscoverProviders extends ChangeNotifier {
  final VideoPostRepositoryimpl videoPostRepositoryimpl;
  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProviders({required this.videoPostRepositoryimpl});

  Future<void> loadNextPage() async {
    final newVideos = await videoPostRepositoryimpl.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
