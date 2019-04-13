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
// BatchClientProtocol.swift
// BatchClient
//

import Foundation
import BatchModel
import SmokeHTTPClient

/**
 Client Protocol for the Batch service.
 */
public protocol BatchClientProtocol {
    typealias CancelJobSyncType = (_ input: BatchModel.CancelJobRequest) throws -> BatchModel.CancelJobResponse
    typealias CancelJobAsyncType = (_ input: BatchModel.CancelJobRequest, _ completion: @escaping (HTTPResult<BatchModel.CancelJobResponse>) -> ()) throws -> ()
    typealias CreateComputeEnvironmentSyncType = (_ input: BatchModel.CreateComputeEnvironmentRequest) throws -> BatchModel.CreateComputeEnvironmentResponse
    typealias CreateComputeEnvironmentAsyncType = (_ input: BatchModel.CreateComputeEnvironmentRequest, _ completion: @escaping (HTTPResult<BatchModel.CreateComputeEnvironmentResponse>) -> ()) throws -> ()
    typealias CreateJobQueueSyncType = (_ input: BatchModel.CreateJobQueueRequest) throws -> BatchModel.CreateJobQueueResponse
    typealias CreateJobQueueAsyncType = (_ input: BatchModel.CreateJobQueueRequest, _ completion: @escaping (HTTPResult<BatchModel.CreateJobQueueResponse>) -> ()) throws -> ()
    typealias DeleteComputeEnvironmentSyncType = (_ input: BatchModel.DeleteComputeEnvironmentRequest) throws -> BatchModel.DeleteComputeEnvironmentResponse
    typealias DeleteComputeEnvironmentAsyncType = (_ input: BatchModel.DeleteComputeEnvironmentRequest, _ completion: @escaping (HTTPResult<BatchModel.DeleteComputeEnvironmentResponse>) -> ()) throws -> ()
    typealias DeleteJobQueueSyncType = (_ input: BatchModel.DeleteJobQueueRequest) throws -> BatchModel.DeleteJobQueueResponse
    typealias DeleteJobQueueAsyncType = (_ input: BatchModel.DeleteJobQueueRequest, _ completion: @escaping (HTTPResult<BatchModel.DeleteJobQueueResponse>) -> ()) throws -> ()
    typealias DeregisterJobDefinitionSyncType = (_ input: BatchModel.DeregisterJobDefinitionRequest) throws -> BatchModel.DeregisterJobDefinitionResponse
    typealias DeregisterJobDefinitionAsyncType = (_ input: BatchModel.DeregisterJobDefinitionRequest, _ completion: @escaping (HTTPResult<BatchModel.DeregisterJobDefinitionResponse>) -> ()) throws -> ()
    typealias DescribeComputeEnvironmentsSyncType = (_ input: BatchModel.DescribeComputeEnvironmentsRequest) throws -> BatchModel.DescribeComputeEnvironmentsResponse
    typealias DescribeComputeEnvironmentsAsyncType = (_ input: BatchModel.DescribeComputeEnvironmentsRequest, _ completion: @escaping (HTTPResult<BatchModel.DescribeComputeEnvironmentsResponse>) -> ()) throws -> ()
    typealias DescribeJobDefinitionsSyncType = (_ input: BatchModel.DescribeJobDefinitionsRequest) throws -> BatchModel.DescribeJobDefinitionsResponse
    typealias DescribeJobDefinitionsAsyncType = (_ input: BatchModel.DescribeJobDefinitionsRequest, _ completion: @escaping (HTTPResult<BatchModel.DescribeJobDefinitionsResponse>) -> ()) throws -> ()
    typealias DescribeJobQueuesSyncType = (_ input: BatchModel.DescribeJobQueuesRequest) throws -> BatchModel.DescribeJobQueuesResponse
    typealias DescribeJobQueuesAsyncType = (_ input: BatchModel.DescribeJobQueuesRequest, _ completion: @escaping (HTTPResult<BatchModel.DescribeJobQueuesResponse>) -> ()) throws -> ()
    typealias DescribeJobsSyncType = (_ input: BatchModel.DescribeJobsRequest) throws -> BatchModel.DescribeJobsResponse
    typealias DescribeJobsAsyncType = (_ input: BatchModel.DescribeJobsRequest, _ completion: @escaping (HTTPResult<BatchModel.DescribeJobsResponse>) -> ()) throws -> ()
    typealias ListJobsSyncType = (_ input: BatchModel.ListJobsRequest) throws -> BatchModel.ListJobsResponse
    typealias ListJobsAsyncType = (_ input: BatchModel.ListJobsRequest, _ completion: @escaping (HTTPResult<BatchModel.ListJobsResponse>) -> ()) throws -> ()
    typealias RegisterJobDefinitionSyncType = (_ input: BatchModel.RegisterJobDefinitionRequest) throws -> BatchModel.RegisterJobDefinitionResponse
    typealias RegisterJobDefinitionAsyncType = (_ input: BatchModel.RegisterJobDefinitionRequest, _ completion: @escaping (HTTPResult<BatchModel.RegisterJobDefinitionResponse>) -> ()) throws -> ()
    typealias SubmitJobSyncType = (_ input: BatchModel.SubmitJobRequest) throws -> BatchModel.SubmitJobResponse
    typealias SubmitJobAsyncType = (_ input: BatchModel.SubmitJobRequest, _ completion: @escaping (HTTPResult<BatchModel.SubmitJobResponse>) -> ()) throws -> ()
    typealias TerminateJobSyncType = (_ input: BatchModel.TerminateJobRequest) throws -> BatchModel.TerminateJobResponse
    typealias TerminateJobAsyncType = (_ input: BatchModel.TerminateJobRequest, _ completion: @escaping (HTTPResult<BatchModel.TerminateJobResponse>) -> ()) throws -> ()
    typealias UpdateComputeEnvironmentSyncType = (_ input: BatchModel.UpdateComputeEnvironmentRequest) throws -> BatchModel.UpdateComputeEnvironmentResponse
    typealias UpdateComputeEnvironmentAsyncType = (_ input: BatchModel.UpdateComputeEnvironmentRequest, _ completion: @escaping (HTTPResult<BatchModel.UpdateComputeEnvironmentResponse>) -> ()) throws -> ()
    typealias UpdateJobQueueSyncType = (_ input: BatchModel.UpdateJobQueueRequest) throws -> BatchModel.UpdateJobQueueResponse
    typealias UpdateJobQueueAsyncType = (_ input: BatchModel.UpdateJobQueueRequest, _ completion: @escaping (HTTPResult<BatchModel.UpdateJobQueueResponse>) -> ()) throws -> ()

    /**
     Invokes the CancelJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelJobRequest object being passed to this operation.
         - completion: The CancelJobResponse object or an error will be passed to this 
           callback when the operation is complete. The CancelJobResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    func cancelJobAsync(input: BatchModel.CancelJobRequest, completion: @escaping (HTTPResult<BatchModel.CancelJobResponse>) -> ()) throws

    /**
     Invokes the CancelJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelJobRequest object being passed to this operation.
     - Returns: The CancelJobResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    func cancelJobSync(input: BatchModel.CancelJobRequest) throws -> BatchModel.CancelJobResponse

    /**
     Invokes the CreateComputeEnvironment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateComputeEnvironmentRequest object being passed to this operation.
         - completion: The CreateComputeEnvironmentResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateComputeEnvironmentResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    func createComputeEnvironmentAsync(input: BatchModel.CreateComputeEnvironmentRequest, completion: @escaping (HTTPResult<BatchModel.CreateComputeEnvironmentResponse>) -> ()) throws

    /**
     Invokes the CreateComputeEnvironment operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateComputeEnvironmentRequest object being passed to this operation.
     - Returns: The CreateComputeEnvironmentResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    func createComputeEnvironmentSync(input: BatchModel.CreateComputeEnvironmentRequest) throws -> BatchModel.CreateComputeEnvironmentResponse

    /**
     Invokes the CreateJobQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateJobQueueRequest object being passed to this operation.
         - completion: The CreateJobQueueResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateJobQueueResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    func createJobQueueAsync(input: BatchModel.CreateJobQueueRequest, completion: @escaping (HTTPResult<BatchModel.CreateJobQueueResponse>) -> ()) throws

    /**
     Invokes the CreateJobQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateJobQueueRequest object being passed to this operation.
     - Returns: The CreateJobQueueResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    func createJobQueueSync(input: BatchModel.CreateJobQueueRequest) throws -> BatchModel.CreateJobQueueResponse

    /**
     Invokes the DeleteComputeEnvironment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteComputeEnvironmentRequest object being passed to this operation.
         - completion: The DeleteComputeEnvironmentResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteComputeEnvironmentResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    func deleteComputeEnvironmentAsync(input: BatchModel.DeleteComputeEnvironmentRequest, completion: @escaping (HTTPResult<BatchModel.DeleteComputeEnvironmentResponse>) -> ()) throws

    /**
     Invokes the DeleteComputeEnvironment operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteComputeEnvironmentRequest object being passed to this operation.
     - Returns: The DeleteComputeEnvironmentResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    func deleteComputeEnvironmentSync(input: BatchModel.DeleteComputeEnvironmentRequest) throws -> BatchModel.DeleteComputeEnvironmentResponse

    /**
     Invokes the DeleteJobQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteJobQueueRequest object being passed to this operation.
         - completion: The DeleteJobQueueResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteJobQueueResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    func deleteJobQueueAsync(input: BatchModel.DeleteJobQueueRequest, completion: @escaping (HTTPResult<BatchModel.DeleteJobQueueResponse>) -> ()) throws

    /**
     Invokes the DeleteJobQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteJobQueueRequest object being passed to this operation.
     - Returns: The DeleteJobQueueResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    func deleteJobQueueSync(input: BatchModel.DeleteJobQueueRequest) throws -> BatchModel.DeleteJobQueueResponse

    /**
     Invokes the DeregisterJobDefinition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterJobDefinitionRequest object being passed to this operation.
         - completion: The DeregisterJobDefinitionResponse object or an error will be passed to this 
           callback when the operation is complete. The DeregisterJobDefinitionResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    func deregisterJobDefinitionAsync(input: BatchModel.DeregisterJobDefinitionRequest, completion: @escaping (HTTPResult<BatchModel.DeregisterJobDefinitionResponse>) -> ()) throws

    /**
     Invokes the DeregisterJobDefinition operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterJobDefinitionRequest object being passed to this operation.
     - Returns: The DeregisterJobDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    func deregisterJobDefinitionSync(input: BatchModel.DeregisterJobDefinitionRequest) throws -> BatchModel.DeregisterJobDefinitionResponse

    /**
     Invokes the DescribeComputeEnvironments operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeComputeEnvironmentsRequest object being passed to this operation.
         - completion: The DescribeComputeEnvironmentsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeComputeEnvironmentsResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    func describeComputeEnvironmentsAsync(input: BatchModel.DescribeComputeEnvironmentsRequest, completion: @escaping (HTTPResult<BatchModel.DescribeComputeEnvironmentsResponse>) -> ()) throws

    /**
     Invokes the DescribeComputeEnvironments operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeComputeEnvironmentsRequest object being passed to this operation.
     - Returns: The DescribeComputeEnvironmentsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    func describeComputeEnvironmentsSync(input: BatchModel.DescribeComputeEnvironmentsRequest) throws -> BatchModel.DescribeComputeEnvironmentsResponse

    /**
     Invokes the DescribeJobDefinitions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeJobDefinitionsRequest object being passed to this operation.
         - completion: The DescribeJobDefinitionsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeJobDefinitionsResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    func describeJobDefinitionsAsync(input: BatchModel.DescribeJobDefinitionsRequest, completion: @escaping (HTTPResult<BatchModel.DescribeJobDefinitionsResponse>) -> ()) throws

    /**
     Invokes the DescribeJobDefinitions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeJobDefinitionsRequest object being passed to this operation.
     - Returns: The DescribeJobDefinitionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    func describeJobDefinitionsSync(input: BatchModel.DescribeJobDefinitionsRequest) throws -> BatchModel.DescribeJobDefinitionsResponse

    /**
     Invokes the DescribeJobQueues operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeJobQueuesRequest object being passed to this operation.
         - completion: The DescribeJobQueuesResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeJobQueuesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    func describeJobQueuesAsync(input: BatchModel.DescribeJobQueuesRequest, completion: @escaping (HTTPResult<BatchModel.DescribeJobQueuesResponse>) -> ()) throws

    /**
     Invokes the DescribeJobQueues operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeJobQueuesRequest object being passed to this operation.
     - Returns: The DescribeJobQueuesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    func describeJobQueuesSync(input: BatchModel.DescribeJobQueuesRequest) throws -> BatchModel.DescribeJobQueuesResponse

    /**
     Invokes the DescribeJobs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeJobsRequest object being passed to this operation.
         - completion: The DescribeJobsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeJobsResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    func describeJobsAsync(input: BatchModel.DescribeJobsRequest, completion: @escaping (HTTPResult<BatchModel.DescribeJobsResponse>) -> ()) throws

    /**
     Invokes the DescribeJobs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeJobsRequest object being passed to this operation.
     - Returns: The DescribeJobsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    func describeJobsSync(input: BatchModel.DescribeJobsRequest) throws -> BatchModel.DescribeJobsResponse

    /**
     Invokes the ListJobs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListJobsRequest object being passed to this operation.
         - completion: The ListJobsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListJobsResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    func listJobsAsync(input: BatchModel.ListJobsRequest, completion: @escaping (HTTPResult<BatchModel.ListJobsResponse>) -> ()) throws

    /**
     Invokes the ListJobs operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListJobsRequest object being passed to this operation.
     - Returns: The ListJobsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    func listJobsSync(input: BatchModel.ListJobsRequest) throws -> BatchModel.ListJobsResponse

    /**
     Invokes the RegisterJobDefinition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterJobDefinitionRequest object being passed to this operation.
         - completion: The RegisterJobDefinitionResponse object or an error will be passed to this 
           callback when the operation is complete. The RegisterJobDefinitionResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    func registerJobDefinitionAsync(input: BatchModel.RegisterJobDefinitionRequest, completion: @escaping (HTTPResult<BatchModel.RegisterJobDefinitionResponse>) -> ()) throws

    /**
     Invokes the RegisterJobDefinition operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterJobDefinitionRequest object being passed to this operation.
     - Returns: The RegisterJobDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    func registerJobDefinitionSync(input: BatchModel.RegisterJobDefinitionRequest) throws -> BatchModel.RegisterJobDefinitionResponse

    /**
     Invokes the SubmitJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubmitJobRequest object being passed to this operation.
         - completion: The SubmitJobResponse object or an error will be passed to this 
           callback when the operation is complete. The SubmitJobResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    func submitJobAsync(input: BatchModel.SubmitJobRequest, completion: @escaping (HTTPResult<BatchModel.SubmitJobResponse>) -> ()) throws

    /**
     Invokes the SubmitJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubmitJobRequest object being passed to this operation.
     - Returns: The SubmitJobResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    func submitJobSync(input: BatchModel.SubmitJobRequest) throws -> BatchModel.SubmitJobResponse

    /**
     Invokes the TerminateJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TerminateJobRequest object being passed to this operation.
         - completion: The TerminateJobResponse object or an error will be passed to this 
           callback when the operation is complete. The TerminateJobResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    func terminateJobAsync(input: BatchModel.TerminateJobRequest, completion: @escaping (HTTPResult<BatchModel.TerminateJobResponse>) -> ()) throws

    /**
     Invokes the TerminateJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated TerminateJobRequest object being passed to this operation.
     - Returns: The TerminateJobResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    func terminateJobSync(input: BatchModel.TerminateJobRequest) throws -> BatchModel.TerminateJobResponse

    /**
     Invokes the UpdateComputeEnvironment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateComputeEnvironmentRequest object being passed to this operation.
         - completion: The UpdateComputeEnvironmentResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateComputeEnvironmentResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    func updateComputeEnvironmentAsync(input: BatchModel.UpdateComputeEnvironmentRequest, completion: @escaping (HTTPResult<BatchModel.UpdateComputeEnvironmentResponse>) -> ()) throws

    /**
     Invokes the UpdateComputeEnvironment operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateComputeEnvironmentRequest object being passed to this operation.
     - Returns: The UpdateComputeEnvironmentResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    func updateComputeEnvironmentSync(input: BatchModel.UpdateComputeEnvironmentRequest) throws -> BatchModel.UpdateComputeEnvironmentResponse

    /**
     Invokes the UpdateJobQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateJobQueueRequest object being passed to this operation.
         - completion: The UpdateJobQueueResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateJobQueueResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    func updateJobQueueAsync(input: BatchModel.UpdateJobQueueRequest, completion: @escaping (HTTPResult<BatchModel.UpdateJobQueueResponse>) -> ()) throws

    /**
     Invokes the UpdateJobQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateJobQueueRequest object being passed to this operation.
     - Returns: The UpdateJobQueueResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    func updateJobQueueSync(input: BatchModel.UpdateJobQueueRequest) throws -> BatchModel.UpdateJobQueueResponse
}
