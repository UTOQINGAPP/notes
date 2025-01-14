/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

/// Holds a note with a text written by the user.
abstract class Note extends _i1.SerializableEntity {
  Note._({
    this.id,
    required this.title,
    required this.text,
  });

  factory Note({
    int? id,
    required String title,
    required String text,
  }) = _NoteImpl;

  factory Note.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Note(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      text: serializationManager.deserialize<String>(jsonSerialization['text']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String text;

  Note copyWith({
    int? id,
    String? title,
    String? text,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'text': text,
    };
  }
}

class _Undefined {}

class _NoteImpl extends Note {
  _NoteImpl({
    int? id,
    required String title,
    required String text,
  }) : super._(
          id: id,
          title: title,
          text: text,
        );

  @override
  Note copyWith({
    Object? id = _Undefined,
    String? title,
    String? text,
  }) {
    return Note(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      text: text ?? this.text,
    );
  }
}
