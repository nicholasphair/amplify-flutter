// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.source_selection_criteria; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/replica_modifications.dart';
import 'package:smoke_test/src/sdk/src/s3/model/sse_kms_encrypted_objects.dart';

part 'source_selection_criteria.g.dart';

/// A container that describes additional filters for identifying the source objects that you want to replicate. You can choose to enable or disable the replication of these objects. Currently, Amazon S3 supports only the filter that you can specify for objects created with server-side encryption using a customer managed key stored in Amazon Web Services Key Management Service (SSE-KMS).
abstract class SourceSelectionCriteria
    with _i1.AWSEquatable<SourceSelectionCriteria>
    implements Built<SourceSelectionCriteria, SourceSelectionCriteriaBuilder> {
  /// A container that describes additional filters for identifying the source objects that you want to replicate. You can choose to enable or disable the replication of these objects. Currently, Amazon S3 supports only the filter that you can specify for objects created with server-side encryption using a customer managed key stored in Amazon Web Services Key Management Service (SSE-KMS).
  factory SourceSelectionCriteria({
    SseKmsEncryptedObjects? sseKmsEncryptedObjects,
    ReplicaModifications? replicaModifications,
  }) {
    return _$SourceSelectionCriteria._(
      sseKmsEncryptedObjects: sseKmsEncryptedObjects,
      replicaModifications: replicaModifications,
    );
  }

  /// A container that describes additional filters for identifying the source objects that you want to replicate. You can choose to enable or disable the replication of these objects. Currently, Amazon S3 supports only the filter that you can specify for objects created with server-side encryption using a customer managed key stored in Amazon Web Services Key Management Service (SSE-KMS).
  factory SourceSelectionCriteria.build(
          [void Function(SourceSelectionCriteriaBuilder) updates]) =
      _$SourceSelectionCriteria;

  const SourceSelectionCriteria._();

  static const List<_i2.SmithySerializer<SourceSelectionCriteria>> serializers =
      [SourceSelectionCriteriaRestXmlSerializer()];

  /// A container for filter information for the selection of Amazon S3 objects encrypted with Amazon Web Services KMS. If you include `SourceSelectionCriteria` in the replication configuration, this element is required.
  SseKmsEncryptedObjects? get sseKmsEncryptedObjects;

  /// A filter that you can specify for selections for modifications on replicas. Amazon S3 doesn't replicate replica modifications by default. In the latest version of replication configuration (when `Filter` is specified), you can specify this element and set the status to `Enabled` to replicate modifications on replicas.
  ///
  /// If you don't specify the `Filter` element, Amazon S3 assumes that the replication configuration is the earlier version, V1. In the earlier version, this element is not allowed
  ReplicaModifications? get replicaModifications;
  @override
  List<Object?> get props => [
        sseKmsEncryptedObjects,
        replicaModifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SourceSelectionCriteria')
      ..add(
        'sseKmsEncryptedObjects',
        sseKmsEncryptedObjects,
      )
      ..add(
        'replicaModifications',
        replicaModifications,
      );
    return helper.toString();
  }
}

class SourceSelectionCriteriaRestXmlSerializer
    extends _i2.StructuredSmithySerializer<SourceSelectionCriteria> {
  const SourceSelectionCriteriaRestXmlSerializer()
      : super('SourceSelectionCriteria');

  @override
  Iterable<Type> get types => const [
        SourceSelectionCriteria,
        _$SourceSelectionCriteria,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  SourceSelectionCriteria deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SourceSelectionCriteriaBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ReplicaModifications':
          result.replicaModifications.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ReplicaModifications),
          ) as ReplicaModifications));
        case 'SseKmsEncryptedObjects':
          result.sseKmsEncryptedObjects.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SseKmsEncryptedObjects),
          ) as SseKmsEncryptedObjects));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SourceSelectionCriteria object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SourceSelectionCriteria',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final SourceSelectionCriteria(
      :replicaModifications,
      :sseKmsEncryptedObjects
    ) = object;
    if (replicaModifications != null) {
      result$
        ..add(const _i2.XmlElementName('ReplicaModifications'))
        ..add(serializers.serialize(
          replicaModifications,
          specifiedType: const FullType(ReplicaModifications),
        ));
    }
    if (sseKmsEncryptedObjects != null) {
      result$
        ..add(const _i2.XmlElementName('SseKmsEncryptedObjects'))
        ..add(serializers.serialize(
          sseKmsEncryptedObjects,
          specifiedType: const FullType(SseKmsEncryptedObjects),
        ));
    }
    return result$;
  }
}
