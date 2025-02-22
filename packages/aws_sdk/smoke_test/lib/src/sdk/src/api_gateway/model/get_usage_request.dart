// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.model.get_usage_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_usage_request.g.dart';

/// The GET request to get the usage data of a usage plan in a specified time interval.
abstract class GetUsageRequest
    with
        _i1.HttpInput<GetUsageRequestPayload>,
        _i2.AWSEquatable<GetUsageRequest>
    implements
        Built<GetUsageRequest, GetUsageRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetUsageRequestPayload> {
  /// The GET request to get the usage data of a usage plan in a specified time interval.
  factory GetUsageRequest({
    required String usagePlanId,
    String? keyId,
    required String startDate,
    required String endDate,
    String? position,
    int? limit,
  }) {
    return _$GetUsageRequest._(
      usagePlanId: usagePlanId,
      keyId: keyId,
      startDate: startDate,
      endDate: endDate,
      position: position,
      limit: limit,
    );
  }

  /// The GET request to get the usage data of a usage plan in a specified time interval.
  factory GetUsageRequest.build(
      [void Function(GetUsageRequestBuilder) updates]) = _$GetUsageRequest;

  const GetUsageRequest._();

  factory GetUsageRequest.fromRequest(
    GetUsageRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetUsageRequest.build((b) {
        if (request.queryParameters['keyId'] != null) {
          b.keyId = request.queryParameters['keyId']!;
        }
        if (request.queryParameters['startDate'] != null) {
          b.startDate = request.queryParameters['startDate']!;
        }
        if (request.queryParameters['endDate'] != null) {
          b.endDate = request.queryParameters['endDate']!;
        }
        if (request.queryParameters['position'] != null) {
          b.position = request.queryParameters['position']!;
        }
        if (request.queryParameters['limit'] != null) {
          b.limit = int.parse(request.queryParameters['limit']!);
        }
        if (labels['usagePlanId'] != null) {
          b.usagePlanId = labels['usagePlanId']!;
        }
      });

  static const List<_i1.SmithySerializer<GetUsageRequestPayload>> serializers =
      [GetUsageRequestRestJson1Serializer()];

  /// The Id of the usage plan associated with the usage data.
  String get usagePlanId;

  /// The Id of the API key associated with the resultant usage data.
  String? get keyId;

  /// The starting date (e.g., 2016-01-01) of the usage data.
  String get startDate;

  /// The ending date (e.g., 2016-12-31) of the usage data.
  String get endDate;

  /// The current pagination position in the paged result set.
  String? get position;

  /// The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
  int? get limit;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'usagePlanId':
        return usagePlanId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetUsageRequestPayload getPayload() => GetUsageRequestPayload();
  @override
  List<Object?> get props => [
        usagePlanId,
        keyId,
        startDate,
        endDate,
        position,
        limit,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUsageRequest')
      ..add(
        'usagePlanId',
        usagePlanId,
      )
      ..add(
        'keyId',
        keyId,
      )
      ..add(
        'startDate',
        startDate,
      )
      ..add(
        'endDate',
        endDate,
      )
      ..add(
        'position',
        position,
      )
      ..add(
        'limit',
        limit,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetUsageRequestPayload
    with _i2.AWSEquatable<GetUsageRequestPayload>
    implements
        Built<GetUsageRequestPayload, GetUsageRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetUsageRequestPayload(
          [void Function(GetUsageRequestPayloadBuilder) updates]) =
      _$GetUsageRequestPayload;

  const GetUsageRequestPayload._();

  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUsageRequestPayload');
    return helper.toString();
  }
}

class GetUsageRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetUsageRequestPayload> {
  const GetUsageRequestRestJson1Serializer() : super('GetUsageRequest');

  @override
  Iterable<Type> get types => const [
        GetUsageRequest,
        _$GetUsageRequest,
        GetUsageRequestPayload,
        _$GetUsageRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetUsageRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetUsageRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetUsageRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
