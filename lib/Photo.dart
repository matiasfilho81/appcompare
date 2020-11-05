import 'package:json_annotation/json_annotation.dart' show JsonKey, JsonSerializable;
part 'photo.g.dart';

@JsonSerializable()
class Photo {
  final int albumId;
  final int id;
  final String title;
  final String url;

  @JsonKey(
    name: 'thumbnailUrl',
    nullable:true,
  )

  final String thumb;

  Photo({this.albumId, this.id, this.title, this.url, this.thumb});

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}
