import 'package:flutter/material.dart';
import 'package:verticalvideos/domain/entities/video_post.dart';
import 'package:verticalvideos/presentation/widgets/shared/video_buttons.dart';
import 'package:verticalvideos/presentation/widgets/video/vieo_player_screen.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({
    super.key,
    required this.videos,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost video = videos[index];
        return Stack(
          children: [
            SizedBox.expand(
                child: VideoPlayerScreen(
              videoUrl: video.videoUrl,
              caption: video.caption,
            )),
            Positioned(
              right: 20,
              bottom: 20,
              child: VideoButtons(viedo: video),
            ),
          ],
        );
      },
    );
  }
}
