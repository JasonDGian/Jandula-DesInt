import 'package:practica_toktik/domain/entities/video_post.dart';

// Definicion de propiedades de la clase.
class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  // Constructor.
  LocalVideoModel(
      {required this.name,
      required this.videoUrl,
      this.likes = 0,
      this.views = 0});

  // Constructor con nombre. From Jason Map. Genera un modelo a partir de un mapa (json).
  // El control de nulos retornados se hace aqui porque antes de llamar al toEntity se llama Al fromJasonMap().
  factory LocalVideoModel.fromJasonMap(Map<String, dynamic> json) =>
      LocalVideoModel(
          name: json['name'] ?? "no name",
          videoUrl: json['videoUrl'],
          likes: json['likes'] ?? 0,
          views: json['views'] ?? 0);

  // Convierte el modelo a entidad.
  VideoPost toEntity() {
    return VideoPost(
        caption: name, videoUrl: videoUrl, likes: likes, views: views);
  }
}
