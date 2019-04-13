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
// BatchModelDefaultInstances.swift
// BatchModel
//

import Foundation

public extension ArrayProperties {
    /**
     Default instance of the ArrayProperties structure.
     */
    public static let __default: BatchModel.ArrayProperties = {
        let defaultInstance = BatchModel.ArrayProperties(
            size: nil)

        return defaultInstance
    }()
}

public extension ArrayPropertiesDetail {
    /**
     Default instance of the ArrayPropertiesDetail structure.
     */
    public static let __default: BatchModel.ArrayPropertiesDetail = {
        let defaultInstance = BatchModel.ArrayPropertiesDetail(
            index: nil,
            size: nil,
            statusSummary: nil)

        return defaultInstance
    }()
}

public extension ArrayPropertiesSummary {
    /**
     Default instance of the ArrayPropertiesSummary structure.
     */
    public static let __default: BatchModel.ArrayPropertiesSummary = {
        let defaultInstance = BatchModel.ArrayPropertiesSummary(
            index: nil,
            size: nil)

        return defaultInstance
    }()
}

public extension AttemptContainerDetail {
    /**
     Default instance of the AttemptContainerDetail structure.
     */
    public static let __default: BatchModel.AttemptContainerDetail = {
        let defaultInstance = BatchModel.AttemptContainerDetail(
            containerInstanceArn: nil,
            exitCode: nil,
            logStreamName: nil,
            networkInterfaces: nil,
            reason: nil,
            taskArn: nil)

        return defaultInstance
    }()
}

public extension AttemptDetail {
    /**
     Default instance of the AttemptDetail structure.
     */
    public static let __default: BatchModel.AttemptDetail = {
        let defaultInstance = BatchModel.AttemptDetail(
            container: nil,
            startedAt: nil,
            statusReason: nil,
            stoppedAt: nil)

        return defaultInstance
    }()
}

public extension CancelJobRequest {
    /**
     Default instance of the CancelJobRequest structure.
     */
    public static let __default: BatchModel.CancelJobRequest = {
        let defaultInstance = BatchModel.CancelJobRequest(
            jobId: "value",
            reason: "value")

        return defaultInstance
    }()
}

public extension CancelJobResponse {
    /**
     Default instance of the CancelJobResponse structure.
     */
    public static let __default: BatchModel.CancelJobResponse = {
        let defaultInstance = BatchModel.CancelJobResponse()

        return defaultInstance
    }()
}

public extension ClientException {
    /**
     Default instance of the ClientException structure.
     */
    public static let __default: BatchModel.ClientException = {
        let defaultInstance = BatchModel.ClientException(
            message: nil)

        return defaultInstance
    }()
}

public extension ComputeEnvironmentDetail {
    /**
     Default instance of the ComputeEnvironmentDetail structure.
     */
    public static let __default: BatchModel.ComputeEnvironmentDetail = {
        let defaultInstance = BatchModel.ComputeEnvironmentDetail(
            computeEnvironmentArn: "value",
            computeEnvironmentName: "value",
            computeResources: nil,
            ecsClusterArn: "value",
            serviceRole: nil,
            state: nil,
            status: nil,
            statusReason: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension ComputeEnvironmentOrder {
    /**
     Default instance of the ComputeEnvironmentOrder structure.
     */
    public static let __default: BatchModel.ComputeEnvironmentOrder = {
        let defaultInstance = BatchModel.ComputeEnvironmentOrder(
            computeEnvironment: "value",
            order: 0)

        return defaultInstance
    }()
}

public extension ComputeResource {
    /**
     Default instance of the ComputeResource structure.
     */
    public static let __default: BatchModel.ComputeResource = {
        let defaultInstance = BatchModel.ComputeResource(
            bidPercentage: nil,
            desiredvCpus: nil,
            ec2KeyPair: nil,
            imageId: nil,
            instanceRole: "value",
            instanceTypes: [],
            launchTemplate: nil,
            maxvCpus: 0,
            minvCpus: 0,
            placementGroup: nil,
            securityGroupIds: nil,
            spotIamFleetRole: nil,
            subnets: [],
            tags: nil,
            type: .__default)

        return defaultInstance
    }()
}

public extension ComputeResourceUpdate {
    /**
     Default instance of the ComputeResourceUpdate structure.
     */
    public static let __default: BatchModel.ComputeResourceUpdate = {
        let defaultInstance = BatchModel.ComputeResourceUpdate(
            desiredvCpus: nil,
            maxvCpus: nil,
            minvCpus: nil)

        return defaultInstance
    }()
}

public extension ContainerDetail {
    /**
     Default instance of the ContainerDetail structure.
     */
    public static let __default: BatchModel.ContainerDetail = {
        let defaultInstance = BatchModel.ContainerDetail(
            command: nil,
            containerInstanceArn: nil,
            environment: nil,
            exitCode: nil,
            image: nil,
            instanceType: nil,
            jobRoleArn: nil,
            logStreamName: nil,
            memory: nil,
            mountPoints: nil,
            networkInterfaces: nil,
            privileged: nil,
            readonlyRootFilesystem: nil,
            reason: nil,
            resourceRequirements: nil,
            taskArn: nil,
            ulimits: nil,
            user: nil,
            vcpus: nil,
            volumes: nil)

        return defaultInstance
    }()
}

public extension ContainerOverrides {
    /**
     Default instance of the ContainerOverrides structure.
     */
    public static let __default: BatchModel.ContainerOverrides = {
        let defaultInstance = BatchModel.ContainerOverrides(
            command: nil,
            environment: nil,
            instanceType: nil,
            memory: nil,
            resourceRequirements: nil,
            vcpus: nil)

        return defaultInstance
    }()
}

public extension ContainerProperties {
    /**
     Default instance of the ContainerProperties structure.
     */
    public static let __default: BatchModel.ContainerProperties = {
        let defaultInstance = BatchModel.ContainerProperties(
            command: nil,
            environment: nil,
            image: nil,
            instanceType: nil,
            jobRoleArn: nil,
            memory: nil,
            mountPoints: nil,
            privileged: nil,
            readonlyRootFilesystem: nil,
            resourceRequirements: nil,
            ulimits: nil,
            user: nil,
            vcpus: nil,
            volumes: nil)

        return defaultInstance
    }()
}

public extension ContainerSummary {
    /**
     Default instance of the ContainerSummary structure.
     */
    public static let __default: BatchModel.ContainerSummary = {
        let defaultInstance = BatchModel.ContainerSummary(
            exitCode: nil,
            reason: nil)

        return defaultInstance
    }()
}

public extension CreateComputeEnvironmentRequest {
    /**
     Default instance of the CreateComputeEnvironmentRequest structure.
     */
    public static let __default: BatchModel.CreateComputeEnvironmentRequest = {
        let defaultInstance = BatchModel.CreateComputeEnvironmentRequest(
            computeEnvironmentName: "value",
            computeResources: nil,
            serviceRole: "value",
            state: nil,
            type: .__default)

        return defaultInstance
    }()
}

public extension CreateComputeEnvironmentResponse {
    /**
     Default instance of the CreateComputeEnvironmentResponse structure.
     */
    public static let __default: BatchModel.CreateComputeEnvironmentResponse = {
        let defaultInstance = BatchModel.CreateComputeEnvironmentResponse(
            computeEnvironmentArn: nil,
            computeEnvironmentName: nil)

        return defaultInstance
    }()
}

public extension CreateJobQueueRequest {
    /**
     Default instance of the CreateJobQueueRequest structure.
     */
    public static let __default: BatchModel.CreateJobQueueRequest = {
        let defaultInstance = BatchModel.CreateJobQueueRequest(
            computeEnvironmentOrder: [],
            jobQueueName: "value",
            priority: 0,
            state: nil)

        return defaultInstance
    }()
}

public extension CreateJobQueueResponse {
    /**
     Default instance of the CreateJobQueueResponse structure.
     */
    public static let __default: BatchModel.CreateJobQueueResponse = {
        let defaultInstance = BatchModel.CreateJobQueueResponse(
            jobQueueArn: "value",
            jobQueueName: "value")

        return defaultInstance
    }()
}

public extension DeleteComputeEnvironmentRequest {
    /**
     Default instance of the DeleteComputeEnvironmentRequest structure.
     */
    public static let __default: BatchModel.DeleteComputeEnvironmentRequest = {
        let defaultInstance = BatchModel.DeleteComputeEnvironmentRequest(
            computeEnvironment: "value")

        return defaultInstance
    }()
}

public extension DeleteComputeEnvironmentResponse {
    /**
     Default instance of the DeleteComputeEnvironmentResponse structure.
     */
    public static let __default: BatchModel.DeleteComputeEnvironmentResponse = {
        let defaultInstance = BatchModel.DeleteComputeEnvironmentResponse()

        return defaultInstance
    }()
}

public extension DeleteJobQueueRequest {
    /**
     Default instance of the DeleteJobQueueRequest structure.
     */
    public static let __default: BatchModel.DeleteJobQueueRequest = {
        let defaultInstance = BatchModel.DeleteJobQueueRequest(
            jobQueue: "value")

        return defaultInstance
    }()
}

public extension DeleteJobQueueResponse {
    /**
     Default instance of the DeleteJobQueueResponse structure.
     */
    public static let __default: BatchModel.DeleteJobQueueResponse = {
        let defaultInstance = BatchModel.DeleteJobQueueResponse()

        return defaultInstance
    }()
}

public extension DeregisterJobDefinitionRequest {
    /**
     Default instance of the DeregisterJobDefinitionRequest structure.
     */
    public static let __default: BatchModel.DeregisterJobDefinitionRequest = {
        let defaultInstance = BatchModel.DeregisterJobDefinitionRequest(
            jobDefinition: "value")

        return defaultInstance
    }()
}

public extension DeregisterJobDefinitionResponse {
    /**
     Default instance of the DeregisterJobDefinitionResponse structure.
     */
    public static let __default: BatchModel.DeregisterJobDefinitionResponse = {
        let defaultInstance = BatchModel.DeregisterJobDefinitionResponse()

        return defaultInstance
    }()
}

public extension DescribeComputeEnvironmentsRequest {
    /**
     Default instance of the DescribeComputeEnvironmentsRequest structure.
     */
    public static let __default: BatchModel.DescribeComputeEnvironmentsRequest = {
        let defaultInstance = BatchModel.DescribeComputeEnvironmentsRequest(
            computeEnvironments: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeComputeEnvironmentsResponse {
    /**
     Default instance of the DescribeComputeEnvironmentsResponse structure.
     */
    public static let __default: BatchModel.DescribeComputeEnvironmentsResponse = {
        let defaultInstance = BatchModel.DescribeComputeEnvironmentsResponse(
            computeEnvironments: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeJobDefinitionsRequest {
    /**
     Default instance of the DescribeJobDefinitionsRequest structure.
     */
    public static let __default: BatchModel.DescribeJobDefinitionsRequest = {
        let defaultInstance = BatchModel.DescribeJobDefinitionsRequest(
            jobDefinitionName: nil,
            jobDefinitions: nil,
            maxResults: nil,
            nextToken: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension DescribeJobDefinitionsResponse {
    /**
     Default instance of the DescribeJobDefinitionsResponse structure.
     */
    public static let __default: BatchModel.DescribeJobDefinitionsResponse = {
        let defaultInstance = BatchModel.DescribeJobDefinitionsResponse(
            jobDefinitions: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeJobQueuesRequest {
    /**
     Default instance of the DescribeJobQueuesRequest structure.
     */
    public static let __default: BatchModel.DescribeJobQueuesRequest = {
        let defaultInstance = BatchModel.DescribeJobQueuesRequest(
            jobQueues: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeJobQueuesResponse {
    /**
     Default instance of the DescribeJobQueuesResponse structure.
     */
    public static let __default: BatchModel.DescribeJobQueuesResponse = {
        let defaultInstance = BatchModel.DescribeJobQueuesResponse(
            jobQueues: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeJobsRequest {
    /**
     Default instance of the DescribeJobsRequest structure.
     */
    public static let __default: BatchModel.DescribeJobsRequest = {
        let defaultInstance = BatchModel.DescribeJobsRequest(
            jobs: [])

        return defaultInstance
    }()
}

public extension DescribeJobsResponse {
    /**
     Default instance of the DescribeJobsResponse structure.
     */
    public static let __default: BatchModel.DescribeJobsResponse = {
        let defaultInstance = BatchModel.DescribeJobsResponse(
            jobs: nil)

        return defaultInstance
    }()
}

public extension Host {
    /**
     Default instance of the Host structure.
     */
    public static let __default: BatchModel.Host = {
        let defaultInstance = BatchModel.Host(
            sourcePath: nil)

        return defaultInstance
    }()
}

public extension JobDefinition {
    /**
     Default instance of the JobDefinition structure.
     */
    public static let __default: BatchModel.JobDefinition = {
        let defaultInstance = BatchModel.JobDefinition(
            containerProperties: nil,
            jobDefinitionArn: "value",
            jobDefinitionName: "value",
            nodeProperties: nil,
            parameters: nil,
            retryStrategy: nil,
            revision: 0,
            status: nil,
            timeout: nil,
            type: "value")

        return defaultInstance
    }()
}

public extension JobDependency {
    /**
     Default instance of the JobDependency structure.
     */
    public static let __default: BatchModel.JobDependency = {
        let defaultInstance = BatchModel.JobDependency(
            jobId: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension JobDetail {
    /**
     Default instance of the JobDetail structure.
     */
    public static let __default: BatchModel.JobDetail = {
        let defaultInstance = BatchModel.JobDetail(
            arrayProperties: nil,
            attempts: nil,
            container: nil,
            createdAt: nil,
            dependsOn: nil,
            jobDefinition: "value",
            jobId: "value",
            jobName: "value",
            jobQueue: "value",
            nodeDetails: nil,
            nodeProperties: nil,
            parameters: nil,
            retryStrategy: nil,
            startedAt: 0,
            status: .__default,
            statusReason: nil,
            stoppedAt: nil,
            timeout: nil)

        return defaultInstance
    }()
}

public extension JobQueueDetail {
    /**
     Default instance of the JobQueueDetail structure.
     */
    public static let __default: BatchModel.JobQueueDetail = {
        let defaultInstance = BatchModel.JobQueueDetail(
            computeEnvironmentOrder: [],
            jobQueueArn: "value",
            jobQueueName: "value",
            priority: 0,
            state: .__default,
            status: nil,
            statusReason: nil)

        return defaultInstance
    }()
}

public extension JobSummary {
    /**
     Default instance of the JobSummary structure.
     */
    public static let __default: BatchModel.JobSummary = {
        let defaultInstance = BatchModel.JobSummary(
            arrayProperties: nil,
            container: nil,
            createdAt: nil,
            jobId: "value",
            jobName: "value",
            nodeProperties: nil,
            startedAt: nil,
            status: nil,
            statusReason: nil,
            stoppedAt: nil)

        return defaultInstance
    }()
}

public extension JobTimeout {
    /**
     Default instance of the JobTimeout structure.
     */
    public static let __default: BatchModel.JobTimeout = {
        let defaultInstance = BatchModel.JobTimeout(
            attemptDurationSeconds: nil)

        return defaultInstance
    }()
}

public extension KeyValuePair {
    /**
     Default instance of the KeyValuePair structure.
     */
    public static let __default: BatchModel.KeyValuePair = {
        let defaultInstance = BatchModel.KeyValuePair(
            name: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension LaunchTemplateSpecification {
    /**
     Default instance of the LaunchTemplateSpecification structure.
     */
    public static let __default: BatchModel.LaunchTemplateSpecification = {
        let defaultInstance = BatchModel.LaunchTemplateSpecification(
            launchTemplateId: nil,
            launchTemplateName: nil,
            version: nil)

        return defaultInstance
    }()
}

public extension ListJobsRequest {
    /**
     Default instance of the ListJobsRequest structure.
     */
    public static let __default: BatchModel.ListJobsRequest = {
        let defaultInstance = BatchModel.ListJobsRequest(
            arrayJobId: nil,
            jobQueue: nil,
            jobStatus: nil,
            maxResults: nil,
            multiNodeJobId: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListJobsResponse {
    /**
     Default instance of the ListJobsResponse structure.
     */
    public static let __default: BatchModel.ListJobsResponse = {
        let defaultInstance = BatchModel.ListJobsResponse(
            jobSummaryList: [],
            nextToken: nil)

        return defaultInstance
    }()
}

public extension MountPoint {
    /**
     Default instance of the MountPoint structure.
     */
    public static let __default: BatchModel.MountPoint = {
        let defaultInstance = BatchModel.MountPoint(
            containerPath: nil,
            readOnly: nil,
            sourceVolume: nil)

        return defaultInstance
    }()
}

public extension NetworkInterface {
    /**
     Default instance of the NetworkInterface structure.
     */
    public static let __default: BatchModel.NetworkInterface = {
        let defaultInstance = BatchModel.NetworkInterface(
            attachmentId: nil,
            ipv6Address: nil,
            privateIpv4Address: nil)

        return defaultInstance
    }()
}

public extension NodeDetails {
    /**
     Default instance of the NodeDetails structure.
     */
    public static let __default: BatchModel.NodeDetails = {
        let defaultInstance = BatchModel.NodeDetails(
            isMainNode: nil,
            nodeIndex: nil)

        return defaultInstance
    }()
}

public extension NodeOverrides {
    /**
     Default instance of the NodeOverrides structure.
     */
    public static let __default: BatchModel.NodeOverrides = {
        let defaultInstance = BatchModel.NodeOverrides(
            nodePropertyOverrides: nil,
            numNodes: nil)

        return defaultInstance
    }()
}

public extension NodeProperties {
    /**
     Default instance of the NodeProperties structure.
     */
    public static let __default: BatchModel.NodeProperties = {
        let defaultInstance = BatchModel.NodeProperties(
            mainNode: 0,
            nodeRangeProperties: [],
            numNodes: 0)

        return defaultInstance
    }()
}

public extension NodePropertiesSummary {
    /**
     Default instance of the NodePropertiesSummary structure.
     */
    public static let __default: BatchModel.NodePropertiesSummary = {
        let defaultInstance = BatchModel.NodePropertiesSummary(
            isMainNode: nil,
            nodeIndex: nil,
            numNodes: nil)

        return defaultInstance
    }()
}

public extension NodePropertyOverride {
    /**
     Default instance of the NodePropertyOverride structure.
     */
    public static let __default: BatchModel.NodePropertyOverride = {
        let defaultInstance = BatchModel.NodePropertyOverride(
            containerOverrides: nil,
            targetNodes: "value")

        return defaultInstance
    }()
}

public extension NodeRangeProperty {
    /**
     Default instance of the NodeRangeProperty structure.
     */
    public static let __default: BatchModel.NodeRangeProperty = {
        let defaultInstance = BatchModel.NodeRangeProperty(
            container: nil,
            targetNodes: "value")

        return defaultInstance
    }()
}

public extension RegisterJobDefinitionRequest {
    /**
     Default instance of the RegisterJobDefinitionRequest structure.
     */
    public static let __default: BatchModel.RegisterJobDefinitionRequest = {
        let defaultInstance = BatchModel.RegisterJobDefinitionRequest(
            containerProperties: nil,
            jobDefinitionName: "value",
            nodeProperties: nil,
            parameters: nil,
            retryStrategy: nil,
            timeout: nil,
            type: .__default)

        return defaultInstance
    }()
}

public extension RegisterJobDefinitionResponse {
    /**
     Default instance of the RegisterJobDefinitionResponse structure.
     */
    public static let __default: BatchModel.RegisterJobDefinitionResponse = {
        let defaultInstance = BatchModel.RegisterJobDefinitionResponse(
            jobDefinitionArn: "value",
            jobDefinitionName: "value",
            revision: 0)

        return defaultInstance
    }()
}

public extension ResourceRequirement {
    /**
     Default instance of the ResourceRequirement structure.
     */
    public static let __default: BatchModel.ResourceRequirement = {
        let defaultInstance = BatchModel.ResourceRequirement(
            type: .__default,
            value: "value")

        return defaultInstance
    }()
}

public extension RetryStrategy {
    /**
     Default instance of the RetryStrategy structure.
     */
    public static let __default: BatchModel.RetryStrategy = {
        let defaultInstance = BatchModel.RetryStrategy(
            attempts: nil)

        return defaultInstance
    }()
}

public extension ServerException {
    /**
     Default instance of the ServerException structure.
     */
    public static let __default: BatchModel.ServerException = {
        let defaultInstance = BatchModel.ServerException(
            message: nil)

        return defaultInstance
    }()
}

public extension SubmitJobRequest {
    /**
     Default instance of the SubmitJobRequest structure.
     */
    public static let __default: BatchModel.SubmitJobRequest = {
        let defaultInstance = BatchModel.SubmitJobRequest(
            arrayProperties: nil,
            containerOverrides: nil,
            dependsOn: nil,
            jobDefinition: "value",
            jobName: "value",
            jobQueue: "value",
            nodeOverrides: nil,
            parameters: nil,
            retryStrategy: nil,
            timeout: nil)

        return defaultInstance
    }()
}

public extension SubmitJobResponse {
    /**
     Default instance of the SubmitJobResponse structure.
     */
    public static let __default: BatchModel.SubmitJobResponse = {
        let defaultInstance = BatchModel.SubmitJobResponse(
            jobId: "value",
            jobName: "value")

        return defaultInstance
    }()
}

public extension TerminateJobRequest {
    /**
     Default instance of the TerminateJobRequest structure.
     */
    public static let __default: BatchModel.TerminateJobRequest = {
        let defaultInstance = BatchModel.TerminateJobRequest(
            jobId: "value",
            reason: "value")

        return defaultInstance
    }()
}

public extension TerminateJobResponse {
    /**
     Default instance of the TerminateJobResponse structure.
     */
    public static let __default: BatchModel.TerminateJobResponse = {
        let defaultInstance = BatchModel.TerminateJobResponse()

        return defaultInstance
    }()
}

public extension Ulimit {
    /**
     Default instance of the Ulimit structure.
     */
    public static let __default: BatchModel.Ulimit = {
        let defaultInstance = BatchModel.Ulimit(
            hardLimit: 0,
            name: "value",
            softLimit: 0)

        return defaultInstance
    }()
}

public extension UpdateComputeEnvironmentRequest {
    /**
     Default instance of the UpdateComputeEnvironmentRequest structure.
     */
    public static let __default: BatchModel.UpdateComputeEnvironmentRequest = {
        let defaultInstance = BatchModel.UpdateComputeEnvironmentRequest(
            computeEnvironment: "value",
            computeResources: nil,
            serviceRole: nil,
            state: nil)

        return defaultInstance
    }()
}

public extension UpdateComputeEnvironmentResponse {
    /**
     Default instance of the UpdateComputeEnvironmentResponse structure.
     */
    public static let __default: BatchModel.UpdateComputeEnvironmentResponse = {
        let defaultInstance = BatchModel.UpdateComputeEnvironmentResponse(
            computeEnvironmentArn: nil,
            computeEnvironmentName: nil)

        return defaultInstance
    }()
}

public extension UpdateJobQueueRequest {
    /**
     Default instance of the UpdateJobQueueRequest structure.
     */
    public static let __default: BatchModel.UpdateJobQueueRequest = {
        let defaultInstance = BatchModel.UpdateJobQueueRequest(
            computeEnvironmentOrder: nil,
            jobQueue: "value",
            priority: nil,
            state: nil)

        return defaultInstance
    }()
}

public extension UpdateJobQueueResponse {
    /**
     Default instance of the UpdateJobQueueResponse structure.
     */
    public static let __default: BatchModel.UpdateJobQueueResponse = {
        let defaultInstance = BatchModel.UpdateJobQueueResponse(
            jobQueueArn: nil,
            jobQueueName: nil)

        return defaultInstance
    }()
}

public extension Volume {
    /**
     Default instance of the Volume structure.
     */
    public static let __default: BatchModel.Volume = {
        let defaultInstance = BatchModel.Volume(
            host: nil,
            name: nil)

        return defaultInstance
    }()
}
