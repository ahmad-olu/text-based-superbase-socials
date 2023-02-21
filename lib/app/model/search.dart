import 'package:freezed_annotation/freezed_annotation.dart';
part 'search.freezed.dart';
part 'search.g.dart';

@freezed
class SearchResult with _$SearchResult {
  const factory SearchResult({required String id}) = _SearchResult;

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}
