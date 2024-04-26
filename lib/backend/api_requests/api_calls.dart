import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class FbpostingCall {
  static Future<ApiCallResponse> call({
    String? soarMessage = 'Hello',
    String? fbToken =
        'EAALBnKwuAaQBO0ZCfrgJQ28SvgmZCgMbjU2dGjOwclz3hNs0A5K7ZC8NNV9N21hLcYZArZCMO2ocdZCDZB16wv9hlzXTOZCCkDjJ6WLn3q3hvZBVctAq5IDXZCca62LAZBM0ZAu785TZAPv4E4fExZAQ0et9sr6EHZC8tBbqOaNpEtHL6gd9ddZAka2HIcIIpBdyxlLV89nB1bjD03j3',
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
