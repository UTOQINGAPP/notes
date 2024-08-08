import 'package:serverpod/server.dart';

import '../generated/protocol.dart';

class NotesEndpoint extends Endpoint {
  Future<void> create(Session session, Note note) async {
    await Note.db.insertRow(session, note);
  }

  Future<void> delete(Session session, Note note) async {
    await Note.db.deleteRow(session, note);
  }

  Future<void> deleteAll(Session session, List<Note> notes) async {
    await Note.db.delete(session, notes);
  }

  Future<void> update(Session session, Note note) async {
    await Note.db.updateRow(session, note);
  }

  Future<List<Note>> getAll(Session session) async {
    // By ordering by the id column, we always get the notes in the same order
    // and not in the order they were updated.

    return await Note.db.find(
      session,
      orderBy: (t) => t.id,
    );
  }
}
