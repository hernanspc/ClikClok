import 'package:clickclock/domain/entities/video_post.dart';
import 'package:clickclock/infastructure/models/local_video_model.dart';
import 'package:clickclock/shared/data/local_video_posts.dart';
import 'package:flutter/material.dart';

class DiscoverProvider extends ChangeNotifier {
  //TODO: Repository, Datasource

  bool initialLoading = true;

  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    //todo: cargar videos
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoEntity())
        .toList();

    // final List<VideoPost> newVideos = videoPosts
    //     .map((video) => VideoPost(
    //           caption: video['name'],
    //           videoUrl: video['videoUrl'],
    //           likes: video['likes'],
    //           views: video['views'],
    //         ))
    //     .toList();

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
