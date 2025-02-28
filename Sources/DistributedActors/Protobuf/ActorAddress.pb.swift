// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ActorAddress.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift Distributed Actors open source project
//
// Copyright (c) 2018-2019 Apple Inc. and the Swift Distributed Actors project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.md for the list of Swift Distributed Actors project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct _ProtoActorAddress {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// TODO oneof { senderNode | recipientNode | node }
  public var node: _ProtoUniqueNode {
    get {return _storage._node ?? _ProtoUniqueNode()}
    set {_uniqueStorage()._node = newValue}
  }
  /// Returns true if `node` has been explicitly set.
  public var hasNode: Bool {return _storage._node != nil}
  /// Clears the value of `node`. Subsequent reads from it will return its default value.
  public mutating func clearNode() {_uniqueStorage()._node = nil}

  public var path: _ProtoActorPath {
    get {return _storage._path ?? _ProtoActorPath()}
    set {_uniqueStorage()._path = newValue}
  }
  /// Returns true if `path` has been explicitly set.
  public var hasPath: Bool {return _storage._path != nil}
  /// Clears the value of `path`. Subsequent reads from it will return its default value.
  public mutating func clearPath() {_uniqueStorage()._path = nil}

  public var incarnation: UInt32 {
    get {return _storage._incarnation}
    set {_uniqueStorage()._incarnation = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct _ProtoActorPath {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var segments: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct _ProtoUniqueNode {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var node: _ProtoNode {
    get {return _storage._node ?? _ProtoNode()}
    set {_uniqueStorage()._node = newValue}
  }
  /// Returns true if `node` has been explicitly set.
  public var hasNode: Bool {return _storage._node != nil}
  /// Clears the value of `node`. Subsequent reads from it will return its default value.
  public mutating func clearNode() {_uniqueStorage()._node = nil}

  public var nid: UInt64 {
    get {return _storage._nid}
    set {_uniqueStorage()._nid = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct _ProtoNode {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var `protocol`: String = String()

  public var system: String = String()

  public var hostname: String = String()

  public var port: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension _ProtoActorAddress: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "ActorAddress"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "node"),
    2: .same(proto: "path"),
    3: .same(proto: "incarnation"),
  ]

  fileprivate class _StorageClass {
    var _node: _ProtoUniqueNode? = nil
    var _path: _ProtoActorPath? = nil
    var _incarnation: UInt32 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _node = source._node
      _path = source._path
      _incarnation = source._incarnation
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._node)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._path)
        case 3: try decoder.decodeSingularUInt32Field(value: &_storage._incarnation)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._node {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._path {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if _storage._incarnation != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._incarnation, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: _ProtoActorAddress, rhs: _ProtoActorAddress) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._node != rhs_storage._node {return false}
        if _storage._path != rhs_storage._path {return false}
        if _storage._incarnation != rhs_storage._incarnation {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension _ProtoActorPath: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "ActorPath"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "segments"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedStringField(value: &self.segments)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.segments.isEmpty {
      try visitor.visitRepeatedStringField(value: self.segments, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: _ProtoActorPath, rhs: _ProtoActorPath) -> Bool {
    if lhs.segments != rhs.segments {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension _ProtoUniqueNode: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "UniqueNode"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "node"),
    2: .same(proto: "nid"),
  ]

  fileprivate class _StorageClass {
    var _node: _ProtoNode? = nil
    var _nid: UInt64 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _node = source._node
      _nid = source._nid
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._node)
        case 2: try decoder.decodeSingularUInt64Field(value: &_storage._nid)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._node {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._nid != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._nid, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: _ProtoUniqueNode, rhs: _ProtoUniqueNode) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._node != rhs_storage._node {return false}
        if _storage._nid != rhs_storage._nid {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension _ProtoNode: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "Node"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "protocol"),
    2: .same(proto: "system"),
    3: .same(proto: "hostname"),
    4: .same(proto: "port"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.`protocol`)
      case 2: try decoder.decodeSingularStringField(value: &self.system)
      case 3: try decoder.decodeSingularStringField(value: &self.hostname)
      case 4: try decoder.decodeSingularUInt32Field(value: &self.port)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.`protocol`.isEmpty {
      try visitor.visitSingularStringField(value: self.`protocol`, fieldNumber: 1)
    }
    if !self.system.isEmpty {
      try visitor.visitSingularStringField(value: self.system, fieldNumber: 2)
    }
    if !self.hostname.isEmpty {
      try visitor.visitSingularStringField(value: self.hostname, fieldNumber: 3)
    }
    if self.port != 0 {
      try visitor.visitSingularUInt32Field(value: self.port, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: _ProtoNode, rhs: _ProtoNode) -> Bool {
    if lhs.`protocol` != rhs.`protocol` {return false}
    if lhs.system != rhs.system {return false}
    if lhs.hostname != rhs.hostname {return false}
    if lhs.port != rhs.port {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
