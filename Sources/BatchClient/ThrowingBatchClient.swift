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
// ThrowingBatchClient.swift
// BatchClient
//

import Foundation
import BatchModel
import SmokeHTTPClient

/**
 Mock Client for the Batch service that by default always throws from its methods.
 */
public struct ThrowingBatchClient: BatchClientProtocol {
    let error: Swift.Error
    let cancelJobAsyncOverride: BatchClientProtocol.CancelJobAsyncType?
    let cancelJobSyncOverride: BatchClientProtocol.CancelJobSyncType?
    let createComputeEnvironmentAsyncOverride: BatchClientProtocol.CreateComputeEnvironmentAsyncType?
    let createComputeEnvironmentSyncOverride: BatchClientProtocol.CreateComputeEnvironmentSyncType?
    let createJobQueueAsyncOverride: BatchClientProtocol.CreateJobQueueAsyncType?
    let createJobQueueSyncOverride: BatchClientProtocol.CreateJobQueueSyncType?
    let deleteComputeEnvironmentAsyncOverride: BatchClientProtocol.DeleteComputeEnvironmentAsyncType?
    let deleteComputeEnvironmentSyncOverride: BatchClientProtocol.DeleteComputeEnvironmentSyncType?
    let deleteJobQueueAsyncOverride: BatchClientProtocol.DeleteJobQueueAsyncType?
    let deleteJobQueueSyncOverride: BatchClientProtocol.DeleteJobQueueSyncType?
    let deregisterJobDefinitionAsyncOverride: BatchClientProtocol.DeregisterJobDefinitionAsyncType?
    let deregisterJobDefinitionSyncOverride: BatchClientProtocol.DeregisterJobDefinitionSyncType?
    let describeComputeEnvironmentsAsyncOverride: BatchClientProtocol.DescribeComputeEnvironmentsAsyncType?
    let describeComputeEnvironmentsSyncOverride: BatchClientProtocol.DescribeComputeEnvironmentsSyncType?
    let describeJobDefinitionsAsyncOverride: BatchClientProtocol.DescribeJobDefinitionsAsyncType?
    let describeJobDefinitionsSyncOverride: BatchClientProtocol.DescribeJobDefinitionsSyncType?
    let describeJobQueuesAsyncOverride: BatchClientProtocol.DescribeJobQueuesAsyncType?
    let describeJobQueuesSyncOverride: BatchClientProtocol.DescribeJobQueuesSyncType?
    let describeJobsAsyncOverride: BatchClientProtocol.DescribeJobsAsyncType?
    let describeJobsSyncOverride: BatchClientProtocol.DescribeJobsSyncType?
    let listJobsAsyncOverride: BatchClientProtocol.ListJobsAsyncType?
    let listJobsSyncOverride: BatchClientProtocol.ListJobsSyncType?
    let registerJobDefinitionAsyncOverride: BatchClientProtocol.RegisterJobDefinitionAsyncType?
    let registerJobDefinitionSyncOverride: BatchClientProtocol.RegisterJobDefinitionSyncType?
    let submitJobAsyncOverride: BatchClientProtocol.SubmitJobAsyncType?
    let submitJobSyncOverride: BatchClientProtocol.SubmitJobSyncType?
    let terminateJobAsyncOverride: BatchClientProtocol.TerminateJobAsyncType?
    let terminateJobSyncOverride: BatchClientProtocol.TerminateJobSyncType?
    let updateComputeEnvironmentAsyncOverride: BatchClientProtocol.UpdateComputeEnvironmentAsyncType?
    let updateComputeEnvironmentSyncOverride: BatchClientProtocol.UpdateComputeEnvironmentSyncType?
    let updateJobQueueAsyncOverride: BatchClientProtocol.UpdateJobQueueAsyncType?
    let updateJobQueueSyncOverride: BatchClientProtocol.UpdateJobQueueSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: Swift.Error,
            cancelJobAsync: BatchClientProtocol.CancelJobAsyncType? = nil,
            cancelJobSync: BatchClientProtocol.CancelJobSyncType? = nil,
            createComputeEnvironmentAsync: BatchClientProtocol.CreateComputeEnvironmentAsyncType? = nil,
            createComputeEnvironmentSync: BatchClientProtocol.CreateComputeEnvironmentSyncType? = nil,
            createJobQueueAsync: BatchClientProtocol.CreateJobQueueAsyncType? = nil,
            createJobQueueSync: BatchClientProtocol.CreateJobQueueSyncType? = nil,
            deleteComputeEnvironmentAsync: BatchClientProtocol.DeleteComputeEnvironmentAsyncType? = nil,
            deleteComputeEnvironmentSync: BatchClientProtocol.DeleteComputeEnvironmentSyncType? = nil,
            deleteJobQueueAsync: BatchClientProtocol.DeleteJobQueueAsyncType? = nil,
            deleteJobQueueSync: BatchClientProtocol.DeleteJobQueueSyncType? = nil,
            deregisterJobDefinitionAsync: BatchClientProtocol.DeregisterJobDefinitionAsyncType? = nil,
            deregisterJobDefinitionSync: BatchClientProtocol.DeregisterJobDefinitionSyncType? = nil,
            describeComputeEnvironmentsAsync: BatchClientProtocol.DescribeComputeEnvironmentsAsyncType? = nil,
            describeComputeEnvironmentsSync: BatchClientProtocol.DescribeComputeEnvironmentsSyncType? = nil,
            describeJobDefinitionsAsync: BatchClientProtocol.DescribeJobDefinitionsAsyncType? = nil,
            describeJobDefinitionsSync: BatchClientProtocol.DescribeJobDefinitionsSyncType? = nil,
            describeJobQueuesAsync: BatchClientProtocol.DescribeJobQueuesAsyncType? = nil,
            describeJobQueuesSync: BatchClientProtocol.DescribeJobQueuesSyncType? = nil,
            describeJobsAsync: BatchClientProtocol.DescribeJobsAsyncType? = nil,
            describeJobsSync: BatchClientProtocol.DescribeJobsSyncType? = nil,
            listJobsAsync: BatchClientProtocol.ListJobsAsyncType? = nil,
            listJobsSync: BatchClientProtocol.ListJobsSyncType? = nil,
            registerJobDefinitionAsync: BatchClientProtocol.RegisterJobDefinitionAsyncType? = nil,
            registerJobDefinitionSync: BatchClientProtocol.RegisterJobDefinitionSyncType? = nil,
            submitJobAsync: BatchClientProtocol.SubmitJobAsyncType? = nil,
            submitJobSync: BatchClientProtocol.SubmitJobSyncType? = nil,
            terminateJobAsync: BatchClientProtocol.TerminateJobAsyncType? = nil,
            terminateJobSync: BatchClientProtocol.TerminateJobSyncType? = nil,
            updateComputeEnvironmentAsync: BatchClientProtocol.UpdateComputeEnvironmentAsyncType? = nil,
            updateComputeEnvironmentSync: BatchClientProtocol.UpdateComputeEnvironmentSyncType? = nil,
            updateJobQueueAsync: BatchClientProtocol.UpdateJobQueueAsyncType? = nil,
            updateJobQueueSync: BatchClientProtocol.UpdateJobQueueSyncType? = nil) {
        self.error = error
        self.cancelJobAsyncOverride = cancelJobAsync
        self.cancelJobSyncOverride = cancelJobSync
        self.createComputeEnvironmentAsyncOverride = createComputeEnvironmentAsync
        self.createComputeEnvironmentSyncOverride = createComputeEnvironmentSync
        self.createJobQueueAsyncOverride = createJobQueueAsync
        self.createJobQueueSyncOverride = createJobQueueSync
        self.deleteComputeEnvironmentAsyncOverride = deleteComputeEnvironmentAsync
        self.deleteComputeEnvironmentSyncOverride = deleteComputeEnvironmentSync
        self.deleteJobQueueAsyncOverride = deleteJobQueueAsync
        self.deleteJobQueueSyncOverride = deleteJobQueueSync
        self.deregisterJobDefinitionAsyncOverride = deregisterJobDefinitionAsync
        self.deregisterJobDefinitionSyncOverride = deregisterJobDefinitionSync
        self.describeComputeEnvironmentsAsyncOverride = describeComputeEnvironmentsAsync
        self.describeComputeEnvironmentsSyncOverride = describeComputeEnvironmentsSync
        self.describeJobDefinitionsAsyncOverride = describeJobDefinitionsAsync
        self.describeJobDefinitionsSyncOverride = describeJobDefinitionsSync
        self.describeJobQueuesAsyncOverride = describeJobQueuesAsync
        self.describeJobQueuesSyncOverride = describeJobQueuesSync
        self.describeJobsAsyncOverride = describeJobsAsync
        self.describeJobsSyncOverride = describeJobsSync
        self.listJobsAsyncOverride = listJobsAsync
        self.listJobsSyncOverride = listJobsSync
        self.registerJobDefinitionAsyncOverride = registerJobDefinitionAsync
        self.registerJobDefinitionSyncOverride = registerJobDefinitionSync
        self.submitJobAsyncOverride = submitJobAsync
        self.submitJobSyncOverride = submitJobSync
        self.terminateJobAsyncOverride = terminateJobAsync
        self.terminateJobSyncOverride = terminateJobSync
        self.updateComputeEnvironmentAsyncOverride = updateComputeEnvironmentAsync
        self.updateComputeEnvironmentSyncOverride = updateComputeEnvironmentSync
        self.updateJobQueueAsyncOverride = updateJobQueueAsync
        self.updateJobQueueSyncOverride = updateJobQueueSync
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
        if let cancelJobAsyncOverride = cancelJobAsyncOverride {
            return try cancelJobAsyncOverride(input, completion)
        }

        completion(.error(error))
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
        if let cancelJobSyncOverride = cancelJobSyncOverride {
            return try cancelJobSyncOverride(input)
        }

        throw error
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
        if let createComputeEnvironmentAsyncOverride = createComputeEnvironmentAsyncOverride {
            return try createComputeEnvironmentAsyncOverride(input, completion)
        }

        completion(.error(error))
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
        if let createComputeEnvironmentSyncOverride = createComputeEnvironmentSyncOverride {
            return try createComputeEnvironmentSyncOverride(input)
        }

        throw error
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
        if let createJobQueueAsyncOverride = createJobQueueAsyncOverride {
            return try createJobQueueAsyncOverride(input, completion)
        }

        completion(.error(error))
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
        if let createJobQueueSyncOverride = createJobQueueSyncOverride {
            return try createJobQueueSyncOverride(input)
        }

        throw error
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
        if let deleteComputeEnvironmentAsyncOverride = deleteComputeEnvironmentAsyncOverride {
            return try deleteComputeEnvironmentAsyncOverride(input, completion)
        }

        completion(.error(error))
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
        if let deleteComputeEnvironmentSyncOverride = deleteComputeEnvironmentSyncOverride {
            return try deleteComputeEnvironmentSyncOverride(input)
        }

        throw error
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
        if let deleteJobQueueAsyncOverride = deleteJobQueueAsyncOverride {
            return try deleteJobQueueAsyncOverride(input, completion)
        }

        completion(.error(error))
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
        if let deleteJobQueueSyncOverride = deleteJobQueueSyncOverride {
            return try deleteJobQueueSyncOverride(input)
        }

        throw error
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
        if let deregisterJobDefinitionAsyncOverride = deregisterJobDefinitionAsyncOverride {
            return try deregisterJobDefinitionAsyncOverride(input, completion)
        }

        completion(.error(error))
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
        if let deregisterJobDefinitionSyncOverride = deregisterJobDefinitionSyncOverride {
            return try deregisterJobDefinitionSyncOverride(input)
        }

        throw error
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
        if let describeComputeEnvironmentsAsyncOverride = describeComputeEnvironmentsAsyncOverride {
            return try describeComputeEnvironmentsAsyncOverride(input, completion)
        }

        completion(.error(error))
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
        if let describeComputeEnvironmentsSyncOverride = describeComputeEnvironmentsSyncOverride {
            return try describeComputeEnvironmentsSyncOverride(input)
        }

        throw error
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
        if let describeJobDefinitionsAsyncOverride = describeJobDefinitionsAsyncOverride {
            return try describeJobDefinitionsAsyncOverride(input, completion)
        }

        completion(.error(error))
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
        if let describeJobDefinitionsSyncOverride = describeJobDefinitionsSyncOverride {
            return try describeJobDefinitionsSyncOverride(input)
        }

        throw error
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
        if let describeJobQueuesAsyncOverride = describeJobQueuesAsyncOverride {
            return try describeJobQueuesAsyncOverride(input, completion)
        }

        completion(.error(error))
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
        if let describeJobQueuesSyncOverride = describeJobQueuesSyncOverride {
            return try describeJobQueuesSyncOverride(input)
        }

        throw error
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
        if let describeJobsAsyncOverride = describeJobsAsyncOverride {
            return try describeJobsAsyncOverride(input, completion)
        }

        completion(.error(error))
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
        if let describeJobsSyncOverride = describeJobsSyncOverride {
            return try describeJobsSyncOverride(input)
        }

        throw error
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
        if let listJobsAsyncOverride = listJobsAsyncOverride {
            return try listJobsAsyncOverride(input, completion)
        }

        completion(.error(error))
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
        if let listJobsSyncOverride = listJobsSyncOverride {
            return try listJobsSyncOverride(input)
        }

        throw error
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
        if let registerJobDefinitionAsyncOverride = registerJobDefinitionAsyncOverride {
            return try registerJobDefinitionAsyncOverride(input, completion)
        }

        completion(.error(error))
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
        if let registerJobDefinitionSyncOverride = registerJobDefinitionSyncOverride {
            return try registerJobDefinitionSyncOverride(input)
        }

        throw error
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
        if let submitJobAsyncOverride = submitJobAsyncOverride {
            return try submitJobAsyncOverride(input, completion)
        }

        completion(.error(error))
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
        if let submitJobSyncOverride = submitJobSyncOverride {
            return try submitJobSyncOverride(input)
        }

        throw error
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
        if let terminateJobAsyncOverride = terminateJobAsyncOverride {
            return try terminateJobAsyncOverride(input, completion)
        }

        completion(.error(error))
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
        if let terminateJobSyncOverride = terminateJobSyncOverride {
            return try terminateJobSyncOverride(input)
        }

        throw error
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
        if let updateComputeEnvironmentAsyncOverride = updateComputeEnvironmentAsyncOverride {
            return try updateComputeEnvironmentAsyncOverride(input, completion)
        }

        completion(.error(error))
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
        if let updateComputeEnvironmentSyncOverride = updateComputeEnvironmentSyncOverride {
            return try updateComputeEnvironmentSyncOverride(input)
        }

        throw error
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
        if let updateJobQueueAsyncOverride = updateJobQueueAsyncOverride {
            return try updateJobQueueAsyncOverride(input, completion)
        }

        completion(.error(error))
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
        if let updateJobQueueSyncOverride = updateJobQueueSyncOverride {
            return try updateJobQueueSyncOverride(input)
        }

        throw error
    }
}
