import 'package:clickclock/domain/entities/video_post.dart';
import 'package:clickclock/presentation/widgets/shared/video_buttons.dart';
import 'package:flutter/material.dart';

class ScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const ScrollableView({
    super.key,
    required this.videos,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      // physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];

        return Stack(
          children: [
            //VIdeo player

            //gradiente

            //Botones
            Positioned(
              right: 20,
              bottom: 40,
              child: VideoButtons(video: videoPost),
            )
          ],
        );
      },
    );
  }
}
