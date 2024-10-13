import 'package:flutter/material.dart';
import 'package:practica_toktik/domain/entities/video_post.dart';
import 'package:practica_toktik/infrastructure/models/local_video_model.dart';
import 'package:practica_toktik/shared/data/local_video_posts.dart';

class HomeProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    // Simuar un retraso.
    await Future.delayed(const Duration(milliseconds: 2000));

    videos = videoPosts
        .map((elemento) => LocalVideoModel.fromJasonMap(elemento).toEntity())
        .toList();

    //final List<VideoPost> newVideos = videoPosts.map( (videos) => LocalVideoModel().fromJasonMap().toEntity() ).toList();

    notifyListeners();
  }
}
