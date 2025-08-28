// This is a generated file - do not edit.
//
// Generated from protos/scene.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use nodeType2DDescriptor instead')
const NodeType2D$json = {
  '1': 'NodeType2D',
  '2': [
    {'1': 'NODE_2D_UNKNOWN', '2': 0},
    {'1': 'NODE_2D_TEXT', '2': 1},
    {'1': 'NODE_2D_RECTANGLE', '2': 2},
    {'1': 'NODE_2D_CIRCLE', '2': 3},
  ],
};

/// Descriptor for `NodeType2D`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List nodeType2DDescriptor = $convert.base64Decode(
    'CgpOb2RlVHlwZTJEEhMKD05PREVfMkRfVU5LTk9XThAAEhAKDE5PREVfMkRfVEVYVBABEhUKEU'
    '5PREVfMkRfUkVDVEFOR0xFEAISEgoOTk9ERV8yRF9DSVJDTEUQAw==');

@$core.Deprecated('Use nodeType3DDescriptor instead')
const NodeType3D$json = {
  '1': 'NodeType3D',
  '2': [
    {'1': 'NODE_3D_UNKNOWN', '2': 0},
    {'1': 'NODE_3D_CUBE', '2': 1},
    {'1': 'NODE_3D_SPHERE', '2': 2},
  ],
};

/// Descriptor for `NodeType3D`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List nodeType3DDescriptor = $convert.base64Decode(
    'CgpOb2RlVHlwZTNEEhMKD05PREVfM0RfVU5LTk9XThAAEhAKDE5PREVfM0RfQ1VCRRABEhIKDk'
    '5PREVfM0RfU1BIRVJFEAI=');

@$core.Deprecated('Use sceneTypeDescriptor instead')
const SceneType$json = {
  '1': 'SceneType',
  '2': [
    {'1': 'SCENE_2D', '2': 0},
    {'1': 'SCENE_3D', '2': 1},
  ],
};

/// Descriptor for `SceneType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sceneTypeDescriptor = $convert
    .base64Decode('CglTY2VuZVR5cGUSDAoIU0NFTkVfMkQQABIMCghTQ0VORV8zRBAB');

@$core.Deprecated('Use nodeDescriptor instead')
const Node$json = {
  '1': 'Node',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'value', '3': 3, '4': 1, '5': 9, '10': 'value'},
    {'1': 'x', '3': 4, '4': 1, '5': 1, '10': 'x'},
    {'1': 'y', '3': 5, '4': 1, '5': 1, '10': 'y'},
    {'1': 'z', '3': 6, '4': 1, '5': 1, '10': 'z'},
    {
      '1': 'type2d',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.scene.NodeType2D',
      '9': 0,
      '10': 'type2d'
    },
    {
      '1': 'type3d',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.scene.NodeType3D',
      '9': 0,
      '10': 'type3d'
    },
    {
      '1': 'properties',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.scene.Node.PropertiesEntry',
      '10': 'properties'
    },
  ],
  '3': [Node_PropertiesEntry$json],
  '8': [
    {'1': 'node_type'},
  ],
};

@$core.Deprecated('Use nodeDescriptor instead')
const Node_PropertiesEntry$json = {
  '1': 'PropertiesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Node`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeDescriptor = $convert.base64Decode(
    'CgROb2RlEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBXZhbHVlGAMgAS'
    'gJUgV2YWx1ZRIMCgF4GAQgASgBUgF4EgwKAXkYBSABKAFSAXkSDAoBehgGIAEoAVIBehIrCgZ0'
    'eXBlMmQYByABKA4yES5zY2VuZS5Ob2RlVHlwZTJESABSBnR5cGUyZBIrCgZ0eXBlM2QYCCABKA'
    '4yES5zY2VuZS5Ob2RlVHlwZTNESABSBnR5cGUzZBI7Cgpwcm9wZXJ0aWVzGAkgAygLMhsuc2Nl'
    'bmUuTm9kZS5Qcm9wZXJ0aWVzRW50cnlSCnByb3BlcnRpZXMaPQoPUHJvcGVydGllc0VudHJ5Eh'
    'AKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAFCCwoJbm9kZV90eXBl');

@$core.Deprecated('Use sceneDescriptor instead')
const Scene$json = {
  '1': 'Scene',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {
      '1': 'type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.scene.SceneType',
      '10': 'type'
    },
    {'1': 'nodes', '3': 3, '4': 3, '5': 11, '6': '.scene.Node', '10': 'nodes'},
  ],
};

/// Descriptor for `Scene`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sceneDescriptor = $convert.base64Decode(
    'CgVTY2VuZRIOCgJpZBgBIAEoCVICaWQSJAoEdHlwZRgCIAEoDjIQLnNjZW5lLlNjZW5lVHlwZV'
    'IEdHlwZRIhCgVub2RlcxgDIAMoCzILLnNjZW5lLk5vZGVSBW5vZGVz');
