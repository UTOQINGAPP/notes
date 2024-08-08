/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/example_endpoint.dart' as _i2;
import '../endpoints/notes_endpoint.dart' as _i3;
import 'package:notes_server/src/generated/note.dart' as _i4;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'example': _i2.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'notes': _i3.NotesEndpoint()
        ..initialize(
          server,
          'notes',
          null,
        ),
    };
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['notes'] = _i1.EndpointConnector(
      name: 'notes',
      endpoint: endpoints['notes']!,
      methodConnectors: {
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'note': _i1.ParameterDescription(
              name: 'note',
              type: _i1.getType<_i4.Note>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['notes'] as _i3.NotesEndpoint).create(
            session,
            params['note'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'note': _i1.ParameterDescription(
              name: 'note',
              type: _i1.getType<_i4.Note>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['notes'] as _i3.NotesEndpoint).delete(
            session,
            params['note'],
          ),
        ),
        'deleteAll': _i1.MethodConnector(
          name: 'deleteAll',
          params: {
            'notes': _i1.ParameterDescription(
              name: 'notes',
              type: _i1.getType<List<_i4.Note>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['notes'] as _i3.NotesEndpoint).deleteAll(
            session,
            params['notes'],
          ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'note': _i1.ParameterDescription(
              name: 'note',
              type: _i1.getType<_i4.Note>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['notes'] as _i3.NotesEndpoint).update(
            session,
            params['note'],
          ),
        ),
        'getAll': _i1.MethodConnector(
          name: 'getAll',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['notes'] as _i3.NotesEndpoint).getAll(session),
        ),
      },
    );
  }
}
