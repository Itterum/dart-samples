// This is a generated file - do not edit.
//
// Generated from protos/scene.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'scene.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'scene.pbenum.dart';

enum Node_NodeType { type2d, type3d, notSet }

/// Универсальный узел (можно расширить)
class Node extends $pb.GeneratedMessage {
  factory Node({
    $core.String? id,
    $core.String? name,
    $core.String? value,
    $core.double? x,
    $core.double? y,
    $core.double? z,
    NodeType2D? type2d,
    NodeType3D? type3d,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? properties,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (value != null) result.value = value;
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (z != null) result.z = z;
    if (type2d != null) result.type2d = type2d;
    if (type3d != null) result.type3d = type3d;
    if (properties != null) result.properties.addEntries(properties);
    return result;
  }

  Node._();

  factory Node.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Node.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Node_NodeType> _Node_NodeTypeByTag = {
    7: Node_NodeType.type2d,
    8: Node_NodeType.type3d,
    0: Node_NodeType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Node',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'scene'),
      createEmptyInstance: create)
    ..oo(0, [7, 8])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'value')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'x', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'y', $pb.PbFieldType.OD)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'z', $pb.PbFieldType.OD)
    ..e<NodeType2D>(7, _omitFieldNames ? '' : 'type2d', $pb.PbFieldType.OE,
        defaultOrMaker: NodeType2D.NODE_2D_UNKNOWN,
        valueOf: NodeType2D.valueOf,
        enumValues: NodeType2D.values)
    ..e<NodeType3D>(8, _omitFieldNames ? '' : 'type3d', $pb.PbFieldType.OE,
        defaultOrMaker: NodeType3D.NODE_3D_UNKNOWN,
        valueOf: NodeType3D.valueOf,
        enumValues: NodeType3D.values)
    ..m<$core.String, $core.String>(9, _omitFieldNames ? '' : 'properties',
        entryClassName: 'Node.PropertiesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('scene'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Node clone() => Node()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Node copyWith(void Function(Node) updates) =>
      super.copyWith((message) => updates(message as Node)) as Node;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Node create() => Node._();
  @$core.override
  Node createEmptyInstance() => create();
  static $pb.PbList<Node> createRepeated() => $pb.PbList<Node>();
  @$core.pragma('dart2js:noInline')
  static Node getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Node>(create);
  static Node? _defaultInstance;

  Node_NodeType whichNodeType() => _Node_NodeTypeByTag[$_whichOneof(0)]!;
  void clearNodeType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get value => $_getSZ(2);
  @$pb.TagNumber(3)
  set value($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get x => $_getN(3);
  @$pb.TagNumber(4)
  set x($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasX() => $_has(3);
  @$pb.TagNumber(4)
  void clearX() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get y => $_getN(4);
  @$pb.TagNumber(5)
  set y($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasY() => $_has(4);
  @$pb.TagNumber(5)
  void clearY() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get z => $_getN(5);
  @$pb.TagNumber(6)
  set z($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasZ() => $_has(5);
  @$pb.TagNumber(6)
  void clearZ() => $_clearField(6);

  @$pb.TagNumber(7)
  NodeType2D get type2d => $_getN(6);
  @$pb.TagNumber(7)
  set type2d(NodeType2D value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasType2d() => $_has(6);
  @$pb.TagNumber(7)
  void clearType2d() => $_clearField(7);

  @$pb.TagNumber(8)
  NodeType3D get type3d => $_getN(7);
  @$pb.TagNumber(8)
  set type3d(NodeType3D value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasType3d() => $_has(7);
  @$pb.TagNumber(8)
  void clearType3d() => $_clearField(8);

  /// Доп. параметры (например, цвет, размеры)
  @$pb.TagNumber(9)
  $pb.PbMap<$core.String, $core.String> get properties => $_getMap(8);
}

/// Сцена, содержащая узлы
class Scene extends $pb.GeneratedMessage {
  factory Scene({
    $core.String? id,
    SceneType? type,
    $core.Iterable<Node>? nodes,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (type != null) result.type = type;
    if (nodes != null) result.nodes.addAll(nodes);
    return result;
  }

  Scene._();

  factory Scene.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Scene.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Scene',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'scene'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..e<SceneType>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: SceneType.SCENE_2D,
        valueOf: SceneType.valueOf,
        enumValues: SceneType.values)
    ..pc<Node>(3, _omitFieldNames ? '' : 'nodes', $pb.PbFieldType.PM,
        subBuilder: Node.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Scene clone() => Scene()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Scene copyWith(void Function(Scene) updates) =>
      super.copyWith((message) => updates(message as Scene)) as Scene;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Scene create() => Scene._();
  @$core.override
  Scene createEmptyInstance() => create();
  static $pb.PbList<Scene> createRepeated() => $pb.PbList<Scene>();
  @$core.pragma('dart2js:noInline')
  static Scene getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Scene>(create);
  static Scene? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  SceneType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(SceneType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<Node> get nodes => $_getList(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
