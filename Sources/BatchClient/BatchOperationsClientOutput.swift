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
// BatchOperationsClientOutput.swift
// BatchClient
//

import Foundation
import SmokeHTTPClient
import BatchModel

/**
 Type to handle the output from the CancelJob operation in a HTTP client.
 */
extension CancelJobResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CancelJobResponse
    public typealias HeadersType = CancelJobResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CancelJobResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateComputeEnvironment operation in a HTTP client.
 */
extension CreateComputeEnvironmentResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateComputeEnvironmentResponse
    public typealias HeadersType = CreateComputeEnvironmentResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateComputeEnvironmentResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateJobQueue operation in a HTTP client.
 */
extension CreateJobQueueResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateJobQueueResponse
    public typealias HeadersType = CreateJobQueueResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateJobQueueResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteComputeEnvironment operation in a HTTP client.
 */
extension DeleteComputeEnvironmentResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteComputeEnvironmentResponse
    public typealias HeadersType = DeleteComputeEnvironmentResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteComputeEnvironmentResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteJobQueue operation in a HTTP client.
 */
extension DeleteJobQueueResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteJobQueueResponse
    public typealias HeadersType = DeleteJobQueueResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteJobQueueResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeregisterJobDefinition operation in a HTTP client.
 */
extension DeregisterJobDefinitionResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeregisterJobDefinitionResponse
    public typealias HeadersType = DeregisterJobDefinitionResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeregisterJobDefinitionResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeComputeEnvironments operation in a HTTP client.
 */
extension DescribeComputeEnvironmentsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeComputeEnvironmentsResponse
    public typealias HeadersType = DescribeComputeEnvironmentsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeComputeEnvironmentsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeJobDefinitions operation in a HTTP client.
 */
extension DescribeJobDefinitionsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeJobDefinitionsResponse
    public typealias HeadersType = DescribeJobDefinitionsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeJobDefinitionsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeJobQueues operation in a HTTP client.
 */
extension DescribeJobQueuesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeJobQueuesResponse
    public typealias HeadersType = DescribeJobQueuesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeJobQueuesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeJobs operation in a HTTP client.
 */
extension DescribeJobsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeJobsResponse
    public typealias HeadersType = DescribeJobsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeJobsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListJobs operation in a HTTP client.
 */
extension ListJobsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListJobsResponse
    public typealias HeadersType = ListJobsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListJobsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RegisterJobDefinition operation in a HTTP client.
 */
extension RegisterJobDefinitionResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = RegisterJobDefinitionResponse
    public typealias HeadersType = RegisterJobDefinitionResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RegisterJobDefinitionResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the SubmitJob operation in a HTTP client.
 */
extension SubmitJobResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = SubmitJobResponse
    public typealias HeadersType = SubmitJobResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> SubmitJobResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the TerminateJob operation in a HTTP client.
 */
extension TerminateJobResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = TerminateJobResponse
    public typealias HeadersType = TerminateJobResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> TerminateJobResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateComputeEnvironment operation in a HTTP client.
 */
extension UpdateComputeEnvironmentResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateComputeEnvironmentResponse
    public typealias HeadersType = UpdateComputeEnvironmentResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateComputeEnvironmentResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateJobQueue operation in a HTTP client.
 */
extension UpdateJobQueueResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateJobQueueResponse
    public typealias HeadersType = UpdateJobQueueResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateJobQueueResponse {
        return try bodyDecodableProvider()
    }
}
