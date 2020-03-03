import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:invoiceninja_flutter/data/models/models.dart';
import 'package:invoiceninja_flutter/utils/formatting.dart';

part 'design_model.g.dart';

abstract class DesignListResponse
    implements Built<DesignListResponse, DesignListResponseBuilder> {
  factory DesignListResponse([void updates(DesignListResponseBuilder b)]) =
      _$DesignListResponse;

  DesignListResponse._();

  BuiltList<DesignEntity> get data;

  static Serializer<DesignListResponse> get serializer =>
      _$designListResponseSerializer;
}

abstract class DesignItemResponse
    implements Built<DesignItemResponse, DesignItemResponseBuilder> {
  factory DesignItemResponse([void updates(DesignItemResponseBuilder b)]) =
      _$DesignItemResponse;

  DesignItemResponse._();

  DesignEntity get data;

  static Serializer<DesignItemResponse> get serializer =>
      _$designItemResponseSerializer;
}

class DesignFields {
  static const String name = 'name';
}

abstract class DesignEntity extends Object
    with BaseEntity
    implements Built<DesignEntity, DesignEntityBuilder> {

  factory DesignEntity() {
    return _$DesignEntity._(
      id: BaseEntity.nextId,
      isChanged: false,
      // STARTER: constructor - do not remove comment
    );
  }

  DesignEntity._();

  String get displayName {
    // STARTER: display name - do not remove comment
  }

  int compareTo(DesignEntity design, String sortField, bool sortAscending) {
    int response = 0;
    DesignEntity designA = sortAscending ? this : design;
    DesignEntity designB = sortAscending ? design : this;

    switch (sortField) {
      // STARTER: sort switch - do not remove comment
    }

    if (response == 0) {
      // STARTER: sort default - do not remove comment
    } else {
      return response;
    }
  }

  bool matchesSearch(String filter) {
    if (filter == null || filter.isEmpty) {
      return true;
    }

    filter = filter.toLowerCase();

    // STARTER: filter - do not remove comment

    return false;
  }

  @override
  bool matchesFilter(String filter) {
    if (filter == null || filter.isEmpty) {
      return true;
    }

    filter = filter.toLowerCase();

    return false;
  }

  @override
  String matchesFilterValue(String filter) {
    if (filter == null || filter.isEmpty) {
      return null;
    }

    filter = filter.toLowerCase();

    return null;
  }

  @override
  String get listDisplayName => null;

  @override
  double get listDisplayAmount => null;

  @override
  FormatNumberType get listDisplayAmountType => null;

  static Serializer<DesignEntity> get serializer => _$designEntitySerializer;
}
