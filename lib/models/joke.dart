import 'package:json_annotation/json_annotation.dart';

part 'joke.g.dart';

@JsonSerializable()
class Joke {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "value")
  String content;

  Joke(
    this.id,
    this.content,
  );

  factory Joke.fromJson(Map<String, dynamic> json) => _$JokeFromJson(json);

  Map<String, dynamic> toJson() => _$JokeToJson(this);
}
