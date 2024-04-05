//
// Copyright 2024 Signal Messenger, LLC
// SPDX-License-Identifier: AGPL-3.0-only
//

// Code generated by Wire protocol buffer compiler, do not edit.
// Source: BackupProto.BackupProtoSelfInvitedOtherUserToGroupUpdate in Backup.proto
import Foundation
import Wire

public struct BackupProtoSelfInvitedOtherUserToGroupUpdate {

    /**
     * If no invitee id available, use GroupUnknownInviteeUpdate
     */
    public var inviteeServiceId: Foundation.Data
    public var unknownFields: UnknownFields = .init()

    public init(inviteeServiceId: Foundation.Data) {
        self.inviteeServiceId = inviteeServiceId
    }

}

#if !WIRE_REMOVE_EQUATABLE
extension BackupProtoSelfInvitedOtherUserToGroupUpdate : Equatable {
}
#endif

#if !WIRE_REMOVE_HASHABLE
extension BackupProtoSelfInvitedOtherUserToGroupUpdate : Hashable {
}
#endif

extension BackupProtoSelfInvitedOtherUserToGroupUpdate : Sendable {
}

extension BackupProtoSelfInvitedOtherUserToGroupUpdate : ProtoMessage {

    public static func protoMessageTypeURL() -> String {
        return "type.googleapis.com/BackupProto.BackupProtoSelfInvitedOtherUserToGroupUpdate"
    }

}

extension BackupProtoSelfInvitedOtherUserToGroupUpdate : Proto3Codable {

    public init(from protoReader: ProtoReader) throws {
        var inviteeServiceId: Foundation.Data = .init()

        let token = try protoReader.beginMessage()
        while let tag = try protoReader.nextTag(token: token) {
            switch tag {
            case 1: inviteeServiceId = try protoReader.decode(Foundation.Data.self)
            default: try protoReader.readUnknownField(tag: tag)
            }
        }
        self.unknownFields = try protoReader.endMessage(token: token)

        self.inviteeServiceId = inviteeServiceId
    }

    public func encode(to protoWriter: ProtoWriter) throws {
        try protoWriter.encode(tag: 1, value: self.inviteeServiceId)
        try protoWriter.writeUnknownFields(unknownFields)
    }

}

#if !WIRE_REMOVE_CODABLE
extension BackupProtoSelfInvitedOtherUserToGroupUpdate : Codable {

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringLiteralCodingKeys.self)
        self.inviteeServiceId = try container.decode(stringEncoded: Foundation.Data.self, forKey: "inviteeServiceId")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringLiteralCodingKeys.self)
        let includeDefaults = encoder.protoDefaultValuesEncodingStrategy == .include

        if includeDefaults || !self.inviteeServiceId.isEmpty {
            try container.encode(stringEncoded: self.inviteeServiceId, forKey: "inviteeServiceId")
        }
    }

}
#endif