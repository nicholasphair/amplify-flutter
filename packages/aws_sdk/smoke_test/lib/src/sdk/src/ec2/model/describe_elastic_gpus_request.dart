// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_elastic_gpus_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_elastic_gpus_request.g.dart';

abstract class DescribeElasticGpusRequest
    with
        _i1.HttpInput<DescribeElasticGpusRequest>,
        _i2.AWSEquatable<DescribeElasticGpusRequest>
    implements
        Built<DescribeElasticGpusRequest, DescribeElasticGpusRequestBuilder> {
  factory DescribeElasticGpusRequest({
    List<String>? elasticGpuIds,
    bool? dryRun,
    List<Filter>? filters,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeElasticGpusRequest._(
      elasticGpuIds:
          elasticGpuIds == null ? null : _i3.BuiltList(elasticGpuIds),
      dryRun: dryRun,
      filters: filters == null ? null : _i3.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeElasticGpusRequest.build(
          [void Function(DescribeElasticGpusRequestBuilder) updates]) =
      _$DescribeElasticGpusRequest;

  const DescribeElasticGpusRequest._();

  factory DescribeElasticGpusRequest.fromRequest(
    DescribeElasticGpusRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeElasticGpusRequest>>
      serializers = [DescribeElasticGpusRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeElasticGpusRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// The Elastic Graphics accelerator IDs.
  _i3.BuiltList<String>? get elasticGpuIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The filters.
  ///
  /// *   `availability-zone` \- The Availability Zone in which the Elastic Graphics accelerator resides.
  ///
  /// *   `elastic-gpu-health` \- The status of the Elastic Graphics accelerator (`OK` | `IMPAIRED`).
  ///
  /// *   `elastic-gpu-state` \- The state of the Elastic Graphics accelerator (`ATTACHED`).
  ///
  /// *   `elastic-gpu-type` \- The type of Elastic Graphics accelerator; for example, `eg1.medium`.
  ///
  /// *   `instance-id` \- The ID of the instance to which the Elastic Graphics accelerator is associated.
  _i3.BuiltList<Filter>? get filters;

  /// The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. This value can be between 5 and 1000.
  int get maxResults;

  /// The token to request the next page of results.
  String? get nextToken;
  @override
  DescribeElasticGpusRequest getPayload() => this;
  @override
  List<Object?> get props => [
        elasticGpuIds,
        dryRun,
        filters,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeElasticGpusRequest')
      ..add(
        'elasticGpuIds',
        elasticGpuIds,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'filters',
        filters,
      )
      ..add(
        'maxResults',
        maxResults,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeElasticGpusRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeElasticGpusRequest> {
  const DescribeElasticGpusRequestEc2QuerySerializer()
      : super('DescribeElasticGpusRequest');

  @override
  Iterable<Type> get types => const [
        DescribeElasticGpusRequest,
        _$DescribeElasticGpusRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeElasticGpusRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeElasticGpusRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ElasticGpuId':
          result.elasticGpuIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Filter':
          result.filters.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'Filter',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Filter)],
            ),
          ) as _i3.BuiltList<Filter>));
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeElasticGpusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeElasticGpusRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeElasticGpusRequest(
      :elasticGpuIds,
      :dryRun,
      :filters,
      :maxResults,
      :nextToken
    ) = object;
    if (elasticGpuIds != null) {
      result$
        ..add(const _i1.XmlElementName('ElasticGpuId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          elasticGpuIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filters,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
