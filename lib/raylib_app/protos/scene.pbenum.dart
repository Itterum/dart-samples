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

/// Типы узлов для 2D
class NodeType2D extends $pb.ProtobufEnum {
  static const NodeType2D NODE_2D_UNKNOWN =
      NodeType2D._(0, _omitEnumNames ? '' : 'NODE_2D_UNKNOWN');
  static const NodeType2D NODE_2D_TEXT =
      NodeType2D._(1, _omitEnumNames ? '' : 'NODE_2D_TEXT');
  static const NodeType2D NODE_2D_RECTANGLE =
      NodeType2D._(2, _omitEnumNames ? '' : 'NODE_2D_RECTANGLE');
  static const NodeType2D NODE_2D_CIRCLE =
      NodeType2D._(3, _omitEnumNames ? '' : 'NODE_2D_CIRCLE');

  static const $core.List<NodeType2D> values = <NodeType2D>[
    NODE_2D_UNKNOWN,
    NODE_2D_TEXT,
    NODE_2D_RECTANGLE,
    NODE_2D_CIRCLE,
  ];

  static final $core.List<NodeType2D?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static NodeType2D? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const NodeType2D._(super.value, super.name);
}

/// Типы узлов для 3D
class NodeType3D extends $pb.ProtobufEnum {
  static const NodeType3D NODE_3D_UNKNOWN =
      NodeType3D._(0, _omitEnumNames ? '' : 'NODE_3D_UNKNOWN');
  static const NodeType3D NODE_3D_CUBE =
      NodeType3D._(1, _omitEnumNames ? '' : 'NODE_3D_CUBE');
  static const NodeType3D NODE_3D_SPHERE =
      NodeType3D._(2, _omitEnumNames ? '' : 'NODE_3D_SPHERE');

  static const $core.List<NodeType3D> values = <NodeType3D>[
    NODE_3D_UNKNOWN,
    NODE_3D_CUBE,
    NODE_3D_SPHERE,
  ];

  static final $core.List<NodeType3D?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static NodeType3D? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const NodeType3D._(super.value, super.name);
}

/// Тип сцены
class SceneType extends $pb.ProtobufEnum {
  static const SceneType SCENE_2D =
      SceneType._(0, _omitEnumNames ? '' : 'SCENE_2D');
  static const SceneType SCENE_3D =
      SceneType._(1, _omitEnumNames ? '' : 'SCENE_3D');

  static const $core.List<SceneType> values = <SceneType>[
    SCENE_2D,
    SCENE_3D,
  ];

  static final $core.List<SceneType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static SceneType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SceneType._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
