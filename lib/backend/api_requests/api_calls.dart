import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class FbpostingCall {
  static Future<ApiCallResponse> call({
    String? soarMessage = 'Hello',
    String? fbToken =
        'EAALBnKwuAaQBO1TZBxzzObP84xzovCtBdDFbIQDUe7GEGcIz4xgjV3Rk7X0UBhD4j58kZArlzCZCKScZAnMHZALiABER3W9AWKA1sZCfZBkWdoQv3pzBdtW61ZAZBEHBHKQlUp0v8FflE62l0WAyGGsgboxLdQZBbxGuEZAO0K8E7ZALiGU3SNL7i3OBfxtZAQNQitKfiM2h5qwECZAF9Y6zOOrW8nN4ZCF4kp8KAob',
    String? imagepath =
        'https://media.4-paws.org/1/e/d/6/1ed6da75afe37d82757142dc7c6633a532f53a7d/VIER%20PFOTEN_2019-03-15_001-2886x1999-1920x1330.jpg',
  }) async {
    const ffApiRequestBody = '''
''';
    return ApiManager.instance.makeApiCall(
      callName: 'fbposting',
      apiUrl:
          'https://graph.facebook.com/v19.0/309152172276683/feed?message=$soarMessage&access_token=$fbToken',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
