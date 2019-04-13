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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment type_body_length
// -- Generated Code; do not edit --
//
// AWSBatchClient.swift
// BatchClient
//

import Foundation
import BatchModel
import SmokeHTTPClient
import SmokeAWSCore
import SmokeAWSHttp
import NIO
import NIOHTTP1

public enum BatchClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

private extension BatchError {
    func isRetriable() -> Bool {
        switch self {
        case .server:
            return true
        default:
            return false
        }
    }
}

private extension Swift.Error {
    func isRetriable() -> Bool {
        if let typedError = self as? BatchError {
            return typedError.isRetriable()
        } else {
            return true
        }
    }
}

/**
 AWS Client for the Batch service.
 */
public struct AWSBatchClient: BatchClientProtocol {
    let httpClient: HTTPClient
    let awsRegion: AWSRegion
    let service: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (Swift.Error) -> Bool
    let credentialsProvider: CredentialsProvider
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                endpointHostName: String,
                endpointPort: Int = 443,
                service: String = "batch",
                contentType: String = "application/x-amz-rest-json-1.1",
                target: String? = nil,
                connectionTimeoutSeconds: Int = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopProvider = .spawnNewThreads) {
        let clientDelegate = JSONAWSHttpClientDelegate<BatchError>()

        self.httpClient = HTTPClient(endpointHostName: endpointHostName,
                                     endpointPort: endpointPort,
                                     contentType: contentType,
                                     clientDelegate: clientDelegate,
                                     connectionTimeoutSeconds: connectionTimeoutSeconds,
                                     eventLoopProvider: eventLoopProvider)
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.retryOnErrorProvider = { error in error.isRetriable() }
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times.
     */
    public func close() {
        httpClient.close()
    }

    /**
     Waits for the client to be closed. If close() is not called,
     this will block forever.
     */
    public func wait() {
        httpClient.wait()
    }

    /**
     Invokes the CancelJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelJobRequest object being passed to this operation.
         - completion: The CancelJobResponse object or an error will be passed to this 
           callback when the operation is complete. The CancelJobResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    public func cancelJobAsync(input: BatchModel.CancelJobRequest, completion: @escaping (HTTPResult<BatchModel.CancelJobResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.cancelJob.rawValue,
                    target: target)

        let requestInput = CancelJobOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/v1/canceljob",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CancelJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelJobRequest object being passed to this operation.
     - Returns: The CancelJobResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    public func cancelJobSync(input: BatchModel.CancelJobRequest) throws -> BatchModel.CancelJobResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.cancelJob.rawValue,
                    target: target)

        let requestInput = CancelJobOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/v1/canceljob",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateComputeEnvironment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateComputeEnvironmentRequest object being passed to this operation.
         - completion: The CreateComputeEnvironmentResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateComputeEnvironmentResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    public func createComputeEnvironmentAsync(input: BatchModel.CreateComputeEnvironmentRequest, completion: @escaping (HTTPResult<BatchModel.CreateComputeEnvironmentResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.createComputeEnvironment.rawValue,
                    target: target)

        let requestInput = CreateComputeEnvironmentOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/v1/createcomputeenvironment",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateComputeEnvironment operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateComputeEnvironmentRequest object being passed to this operation.
     - Returns: The CreateComputeEnvironmentResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    public func createComputeEnvironmentSync(input: BatchModel.CreateComputeEnvironmentRequest) throws -> BatchModel.CreateComputeEnvironmentResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.createComputeEnvironment.rawValue,
                    target: target)

        let requestInput = CreateComputeEnvironmentOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/v1/createcomputeenvironment",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateJobQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateJobQueueRequest object being passed to this operation.
         - completion: The CreateJobQueueResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateJobQueueResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    public func createJobQueueAsync(input: BatchModel.CreateJobQueueRequest, completion: @escaping (HTTPResult<BatchModel.CreateJobQueueResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.createJobQueue.rawValue,
                    target: target)

        let requestInput = CreateJobQueueOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/v1/createjobqueue",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateJobQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateJobQueueRequest object being passed to this operation.
     - Returns: The CreateJobQueueResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    public func createJobQueueSync(input: BatchModel.CreateJobQueueRequest) throws -> BatchModel.CreateJobQueueResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.createJobQueue.rawValue,
                    target: target)

        let requestInput = CreateJobQueueOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/v1/createjobqueue",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteComputeEnvironment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteComputeEnvironmentRequest object being passed to this operation.
         - completion: The DeleteComputeEnvironmentResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteComputeEnvironmentResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    public func deleteComputeEnvironmentAsync(input: BatchModel.DeleteComputeEnvironmentRequest, completion: @escaping (HTTPResult<BatchModel.DeleteComputeEnvironmentResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.deleteComputeEnvironment.rawValue,
                    target: target)

        let requestInput = DeleteComputeEnvironmentOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/v1/deletecomputeenvironment",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteComputeEnvironment operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteComputeEnvironmentRequest object being passed to this operation.
     - Returns: The DeleteComputeEnvironmentResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    public func deleteComputeEnvironmentSync(input: BatchModel.DeleteComputeEnvironmentRequest) throws -> BatchModel.DeleteComputeEnvironmentResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.deleteComputeEnvironment.rawValue,
                    target: target)

        let requestInput = DeleteComputeEnvironmentOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/v1/deletecomputeenvironment",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteJobQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteJobQueueRequest object being passed to this operation.
         - completion: The DeleteJobQueueResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteJobQueueResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    public func deleteJobQueueAsync(input: BatchModel.DeleteJobQueueRequest, completion: @escaping (HTTPResult<BatchModel.DeleteJobQueueResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.deleteJobQueue.rawValue,
                    target: target)

        let requestInput = DeleteJobQueueOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/v1/deletejobqueue",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteJobQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteJobQueueRequest object being passed to this operation.
     - Returns: The DeleteJobQueueResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    public func deleteJobQueueSync(input: BatchModel.DeleteJobQueueRequest) throws -> BatchModel.DeleteJobQueueResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.deleteJobQueue.rawValue,
                    target: target)

        let requestInput = DeleteJobQueueOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/v1/deletejobqueue",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeregisterJobDefinition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterJobDefinitionRequest object being passed to this operation.
         - completion: The DeregisterJobDefinitionResponse object or an error will be passed to this 
           callback when the operation is complete. The DeregisterJobDefinitionResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    public func deregisterJobDefinitionAsync(input: BatchModel.DeregisterJobDefinitionRequest, completion: @escaping (HTTPResult<BatchModel.DeregisterJobDefinitionResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.deregisterJobDefinition.rawValue,
                    target: target)

        let requestInput = DeregisterJobDefinitionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/v1/deregisterjobdefinition",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeregisterJobDefinition operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterJobDefinitionRequest object being passed to this operation.
     - Returns: The DeregisterJobDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    public func deregisterJobDefinitionSync(input: BatchModel.DeregisterJobDefinitionRequest) throws -> BatchModel.DeregisterJobDefinitionResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.deregisterJobDefinition.rawValue,
                    target: target)

        let requestInput = DeregisterJobDefinitionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/v1/deregisterjobdefinition",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeComputeEnvironments operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeComputeEnvironmentsRequest object being passed to this operation.
         - completion: The DescribeComputeEnvironmentsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeComputeEnvironmentsResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    public func describeComputeEnvironmentsAsync(input: BatchModel.DescribeComputeEnvironmentsRequest, completion: @escaping (HTTPResult<BatchModel.DescribeComputeEnvironmentsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.describeComputeEnvironments.rawValue,
                    target: target)

        let requestInput = DescribeComputeEnvironmentsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/v1/describecomputeenvironments",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeComputeEnvironments operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeComputeEnvironmentsRequest object being passed to this operation.
     - Returns: The DescribeComputeEnvironmentsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    public func describeComputeEnvironmentsSync(input: BatchModel.DescribeComputeEnvironmentsRequest) throws -> BatchModel.DescribeComputeEnvironmentsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.describeComputeEnvironments.rawValue,
                    target: target)

        let requestInput = DescribeComputeEnvironmentsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/v1/describecomputeenvironments",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeJobDefinitions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeJobDefinitionsRequest object being passed to this operation.
         - completion: The DescribeJobDefinitionsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeJobDefinitionsResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    public func describeJobDefinitionsAsync(input: BatchModel.DescribeJobDefinitionsRequest, completion: @escaping (HTTPResult<BatchModel.DescribeJobDefinitionsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.describeJobDefinitions.rawValue,
                    target: target)

        let requestInput = DescribeJobDefinitionsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/v1/describejobdefinitions",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeJobDefinitions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeJobDefinitionsRequest object being passed to this operation.
     - Returns: The DescribeJobDefinitionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    public func describeJobDefinitionsSync(input: BatchModel.DescribeJobDefinitionsRequest) throws -> BatchModel.DescribeJobDefinitionsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.describeJobDefinitions.rawValue,
                    target: target)

        let requestInput = DescribeJobDefinitionsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/v1/describejobdefinitions",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeJobQueues operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeJobQueuesRequest object being passed to this operation.
         - completion: The DescribeJobQueuesResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeJobQueuesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    public func describeJobQueuesAsync(input: BatchModel.DescribeJobQueuesRequest, completion: @escaping (HTTPResult<BatchModel.DescribeJobQueuesResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.describeJobQueues.rawValue,
                    target: target)

        let requestInput = DescribeJobQueuesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/v1/describejobqueues",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeJobQueues operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeJobQueuesRequest object being passed to this operation.
     - Returns: The DescribeJobQueuesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    public func describeJobQueuesSync(input: BatchModel.DescribeJobQueuesRequest) throws -> BatchModel.DescribeJobQueuesResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.describeJobQueues.rawValue,
                    target: target)

        let requestInput = DescribeJobQueuesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/v1/describejobqueues",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeJobs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeJobsRequest object being passed to this operation.
         - completion: The DescribeJobsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeJobsResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    public func describeJobsAsync(input: BatchModel.DescribeJobsRequest, completion: @escaping (HTTPResult<BatchModel.DescribeJobsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.describeJobs.rawValue,
                    target: target)

        let requestInput = DescribeJobsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/v1/describejobs",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeJobs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeJobsRequest object being passed to this operation.
     - Returns: The DescribeJobsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    public func describeJobsSync(input: BatchModel.DescribeJobsRequest) throws -> BatchModel.DescribeJobsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.describeJobs.rawValue,
                    target: target)

        let requestInput = DescribeJobsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/v1/describejobs",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListJobs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListJobsRequest object being passed to this operation.
         - completion: The ListJobsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListJobsResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    public func listJobsAsync(input: BatchModel.ListJobsRequest, completion: @escaping (HTTPResult<BatchModel.ListJobsResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.listJobs.rawValue,
                    target: target)

        let requestInput = ListJobsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/v1/listjobs",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListJobs operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListJobsRequest object being passed to this operation.
     - Returns: The ListJobsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    public func listJobsSync(input: BatchModel.ListJobsRequest) throws -> BatchModel.ListJobsResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.listJobs.rawValue,
                    target: target)

        let requestInput = ListJobsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/v1/listjobs",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RegisterJobDefinition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterJobDefinitionRequest object being passed to this operation.
         - completion: The RegisterJobDefinitionResponse object or an error will be passed to this 
           callback when the operation is complete. The RegisterJobDefinitionResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    public func registerJobDefinitionAsync(input: BatchModel.RegisterJobDefinitionRequest, completion: @escaping (HTTPResult<BatchModel.RegisterJobDefinitionResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.registerJobDefinition.rawValue,
                    target: target)

        let requestInput = RegisterJobDefinitionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/v1/registerjobdefinition",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RegisterJobDefinition operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterJobDefinitionRequest object being passed to this operation.
     - Returns: The RegisterJobDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    public func registerJobDefinitionSync(input: BatchModel.RegisterJobDefinitionRequest) throws -> BatchModel.RegisterJobDefinitionResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.registerJobDefinition.rawValue,
                    target: target)

        let requestInput = RegisterJobDefinitionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/v1/registerjobdefinition",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SubmitJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubmitJobRequest object being passed to this operation.
         - completion: The SubmitJobResponse object or an error will be passed to this 
           callback when the operation is complete. The SubmitJobResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    public func submitJobAsync(input: BatchModel.SubmitJobRequest, completion: @escaping (HTTPResult<BatchModel.SubmitJobResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.submitJob.rawValue,
                    target: target)

        let requestInput = SubmitJobOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/v1/submitjob",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SubmitJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubmitJobRequest object being passed to this operation.
     - Returns: The SubmitJobResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    public func submitJobSync(input: BatchModel.SubmitJobRequest) throws -> BatchModel.SubmitJobResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.submitJob.rawValue,
                    target: target)

        let requestInput = SubmitJobOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/v1/submitjob",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the TerminateJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TerminateJobRequest object being passed to this operation.
         - completion: The TerminateJobResponse object or an error will be passed to this 
           callback when the operation is complete. The TerminateJobResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    public func terminateJobAsync(input: BatchModel.TerminateJobRequest, completion: @escaping (HTTPResult<BatchModel.TerminateJobResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.terminateJob.rawValue,
                    target: target)

        let requestInput = TerminateJobOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/v1/terminatejob",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the TerminateJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated TerminateJobRequest object being passed to this operation.
     - Returns: The TerminateJobResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    public func terminateJobSync(input: BatchModel.TerminateJobRequest) throws -> BatchModel.TerminateJobResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.terminateJob.rawValue,
                    target: target)

        let requestInput = TerminateJobOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/v1/terminatejob",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateComputeEnvironment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateComputeEnvironmentRequest object being passed to this operation.
         - completion: The UpdateComputeEnvironmentResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateComputeEnvironmentResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    public func updateComputeEnvironmentAsync(input: BatchModel.UpdateComputeEnvironmentRequest, completion: @escaping (HTTPResult<BatchModel.UpdateComputeEnvironmentResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.updateComputeEnvironment.rawValue,
                    target: target)

        let requestInput = UpdateComputeEnvironmentOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/v1/updatecomputeenvironment",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateComputeEnvironment operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateComputeEnvironmentRequest object being passed to this operation.
     - Returns: The UpdateComputeEnvironmentResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    public func updateComputeEnvironmentSync(input: BatchModel.UpdateComputeEnvironmentRequest) throws -> BatchModel.UpdateComputeEnvironmentResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.updateComputeEnvironment.rawValue,
                    target: target)

        let requestInput = UpdateComputeEnvironmentOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/v1/updatecomputeenvironment",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateJobQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateJobQueueRequest object being passed to this operation.
         - completion: The UpdateJobQueueResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateJobQueueResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    public func updateJobQueueAsync(input: BatchModel.UpdateJobQueueRequest, completion: @escaping (HTTPResult<BatchModel.UpdateJobQueueResponse>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.updateJobQueue.rawValue,
                    target: target)

        let requestInput = UpdateJobQueueOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/v1/updatejobqueue",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateJobQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateJobQueueRequest object being passed to this operation.
     - Returns: The UpdateJobQueueResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    public func updateJobQueueSync(input: BatchModel.UpdateJobQueueRequest) throws -> BatchModel.UpdateJobQueueResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: BatchModelOperations.updateJobQueue.rawValue,
                    target: target)

        let requestInput = UpdateJobQueueOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/v1/updatejobqueue",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }
}
