// Copyright 2018-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//
// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
// -- Generated Code; do not edit --
//
// BatchModelErrors.swift
// BatchModel
//

import Foundation
import LoggerAPI

private let clientIdentity = "ClientException"
private let serverIdentity = "ServerException"
private let __accessDeniedIdentity = "AccessDenied"

public struct BatchErrorPayload: Codable {
    public let type: String
    public let message: String

    enum CodingKeys: String, CodingKey {
        case type = "__type"
        case message = "message"
    }
}

public enum BatchCodingError: Swift.Error {
    case unknownError
    case validationError(reason: String)
    case unrecognizedError(String, String?)
}

public enum BatchError: Swift.Error, Decodable {
    case client(ClientException)
    case server(ServerException)
    case accessDenied(message: String?)

    enum CodingKeys: String, CodingKey {
        case type = "__type"
        case message = "message"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        var errorReason = try values.decode(String.self, forKey: .type)
        let errorMessage = try values.decodeIfPresent(String.self, forKey: .message)
        
        if let index = errorReason.index(of: "#") {
            errorReason = String(errorReason[errorReason.index(index, offsetBy: 1)...])
        }

        switch errorReason {
        case clientIdentity:
            let errorPayload = try ClientException(from: decoder)
            self = BatchError.client(errorPayload)
        case serverIdentity:
            let errorPayload = try ServerException(from: decoder)
            self = BatchError.server(errorPayload)
        case __accessDeniedIdentity:
            self = .accessDenied(message: errorMessage)
        default:
            throw BatchCodingError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

