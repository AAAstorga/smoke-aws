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
// BatchModelStructures.swift
// BatchModel
//

import Foundation

public struct ArrayProperties: Codable, Equatable {
    public var size: Integer?

    public init(size: Integer? = nil) {
        self.size = size
    }

    enum CodingKeys: String, CodingKey {
        case size
    }

    public func validate() throws {
    }
}

public struct ArrayPropertiesDetail: Codable, Equatable {
    public var index: Integer?
    public var size: Integer?
    public var statusSummary: ArrayJobStatusSummary?

    public init(index: Integer? = nil,
                size: Integer? = nil,
                statusSummary: ArrayJobStatusSummary? = nil) {
        self.index = index
        self.size = size
        self.statusSummary = statusSummary
    }

    enum CodingKeys: String, CodingKey {
        case index
        case size
        case statusSummary
    }

    public func validate() throws {
    }
}

public struct ArrayPropertiesSummary: Codable, Equatable {
    public var index: Integer?
    public var size: Integer?

    public init(index: Integer? = nil,
                size: Integer? = nil) {
        self.index = index
        self.size = size
    }

    enum CodingKeys: String, CodingKey {
        case index
        case size
    }

    public func validate() throws {
    }
}

public struct AttemptContainerDetail: Codable, Equatable {
    public var containerInstanceArn: String?
    public var exitCode: Integer?
    public var logStreamName: String?
    public var networkInterfaces: NetworkInterfaceList?
    public var reason: String?
    public var taskArn: String?

    public init(containerInstanceArn: String? = nil,
                exitCode: Integer? = nil,
                logStreamName: String? = nil,
                networkInterfaces: NetworkInterfaceList? = nil,
                reason: String? = nil,
                taskArn: String? = nil) {
        self.containerInstanceArn = containerInstanceArn
        self.exitCode = exitCode
        self.logStreamName = logStreamName
        self.networkInterfaces = networkInterfaces
        self.reason = reason
        self.taskArn = taskArn
    }

    enum CodingKeys: String, CodingKey {
        case containerInstanceArn
        case exitCode
        case logStreamName
        case networkInterfaces
        case reason
        case taskArn
    }

    public func validate() throws {
    }
}

public struct AttemptDetail: Codable, Equatable {
    public var container: AttemptContainerDetail?
    public var startedAt: Long?
    public var statusReason: String?
    public var stoppedAt: Long?

    public init(container: AttemptContainerDetail? = nil,
                startedAt: Long? = nil,
                statusReason: String? = nil,
                stoppedAt: Long? = nil) {
        self.container = container
        self.startedAt = startedAt
        self.statusReason = statusReason
        self.stoppedAt = stoppedAt
    }

    enum CodingKeys: String, CodingKey {
        case container
        case startedAt
        case statusReason
        case stoppedAt
    }

    public func validate() throws {
        try container?.validate()
    }
}

public struct CancelJobRequest: Codable, Equatable {
    public var jobId: String
    public var reason: String

    public init(jobId: String,
                reason: String) {
        self.jobId = jobId
        self.reason = reason
    }

    enum CodingKeys: String, CodingKey {
        case jobId
        case reason
    }

    public func validate() throws {
    }
}

public struct CancelJobResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ClientException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ComputeEnvironmentDetail: Codable, Equatable {
    public var computeEnvironmentArn: String
    public var computeEnvironmentName: String
    public var computeResources: ComputeResource?
    public var ecsClusterArn: String
    public var serviceRole: String?
    public var state: CEState?
    public var status: CEStatus?
    public var statusReason: String?
    public var type: CEType?

    public init(computeEnvironmentArn: String,
                computeEnvironmentName: String,
                computeResources: ComputeResource? = nil,
                ecsClusterArn: String,
                serviceRole: String? = nil,
                state: CEState? = nil,
                status: CEStatus? = nil,
                statusReason: String? = nil,
                type: CEType? = nil) {
        self.computeEnvironmentArn = computeEnvironmentArn
        self.computeEnvironmentName = computeEnvironmentName
        self.computeResources = computeResources
        self.ecsClusterArn = ecsClusterArn
        self.serviceRole = serviceRole
        self.state = state
        self.status = status
        self.statusReason = statusReason
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case computeEnvironmentArn
        case computeEnvironmentName
        case computeResources
        case ecsClusterArn
        case serviceRole
        case state
        case status
        case statusReason
        case type
    }

    public func validate() throws {
        try computeResources?.validate()
    }
}

public struct ComputeEnvironmentOrder: Codable, Equatable {
    public var computeEnvironment: String
    public var order: Integer

    public init(computeEnvironment: String,
                order: Integer) {
        self.computeEnvironment = computeEnvironment
        self.order = order
    }

    enum CodingKeys: String, CodingKey {
        case computeEnvironment
        case order
    }

    public func validate() throws {
    }
}

public struct ComputeResource: Codable, Equatable {
    public var bidPercentage: Integer?
    public var desiredvCpus: Integer?
    public var ec2KeyPair: String?
    public var imageId: String?
    public var instanceRole: String
    public var instanceTypes: StringList
    public var launchTemplate: LaunchTemplateSpecification?
    public var maxvCpus: Integer
    public var minvCpus: Integer
    public var placementGroup: String?
    public var securityGroupIds: StringList?
    public var spotIamFleetRole: String?
    public var subnets: StringList
    public var tags: TagsMap?
    public var type: CRType

    public init(bidPercentage: Integer? = nil,
                desiredvCpus: Integer? = nil,
                ec2KeyPair: String? = nil,
                imageId: String? = nil,
                instanceRole: String,
                instanceTypes: StringList,
                launchTemplate: LaunchTemplateSpecification? = nil,
                maxvCpus: Integer,
                minvCpus: Integer,
                placementGroup: String? = nil,
                securityGroupIds: StringList? = nil,
                spotIamFleetRole: String? = nil,
                subnets: StringList,
                tags: TagsMap? = nil,
                type: CRType) {
        self.bidPercentage = bidPercentage
        self.desiredvCpus = desiredvCpus
        self.ec2KeyPair = ec2KeyPair
        self.imageId = imageId
        self.instanceRole = instanceRole
        self.instanceTypes = instanceTypes
        self.launchTemplate = launchTemplate
        self.maxvCpus = maxvCpus
        self.minvCpus = minvCpus
        self.placementGroup = placementGroup
        self.securityGroupIds = securityGroupIds
        self.spotIamFleetRole = spotIamFleetRole
        self.subnets = subnets
        self.tags = tags
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case bidPercentage
        case desiredvCpus
        case ec2KeyPair
        case imageId
        case instanceRole
        case instanceTypes
        case launchTemplate
        case maxvCpus
        case minvCpus
        case placementGroup
        case securityGroupIds
        case spotIamFleetRole
        case subnets
        case tags
        case type
    }

    public func validate() throws {
        try launchTemplate?.validate()
    }
}

public struct ComputeResourceUpdate: Codable, Equatable {
    public var desiredvCpus: Integer?
    public var maxvCpus: Integer?
    public var minvCpus: Integer?

    public init(desiredvCpus: Integer? = nil,
                maxvCpus: Integer? = nil,
                minvCpus: Integer? = nil) {
        self.desiredvCpus = desiredvCpus
        self.maxvCpus = maxvCpus
        self.minvCpus = minvCpus
    }

    enum CodingKeys: String, CodingKey {
        case desiredvCpus
        case maxvCpus
        case minvCpus
    }

    public func validate() throws {
    }
}

public struct ContainerDetail: Codable, Equatable {
    public var command: StringList?
    public var containerInstanceArn: String?
    public var environment: EnvironmentVariables?
    public var exitCode: Integer?
    public var image: String?
    public var instanceType: String?
    public var jobRoleArn: String?
    public var logStreamName: String?
    public var memory: Integer?
    public var mountPoints: MountPoints?
    public var networkInterfaces: NetworkInterfaceList?
    public var privileged: Boolean?
    public var readonlyRootFilesystem: Boolean?
    public var reason: String?
    public var resourceRequirements: ResourceRequirements?
    public var taskArn: String?
    public var ulimits: Ulimits?
    public var user: String?
    public var vcpus: Integer?
    public var volumes: Volumes?

    public init(command: StringList? = nil,
                containerInstanceArn: String? = nil,
                environment: EnvironmentVariables? = nil,
                exitCode: Integer? = nil,
                image: String? = nil,
                instanceType: String? = nil,
                jobRoleArn: String? = nil,
                logStreamName: String? = nil,
                memory: Integer? = nil,
                mountPoints: MountPoints? = nil,
                networkInterfaces: NetworkInterfaceList? = nil,
                privileged: Boolean? = nil,
                readonlyRootFilesystem: Boolean? = nil,
                reason: String? = nil,
                resourceRequirements: ResourceRequirements? = nil,
                taskArn: String? = nil,
                ulimits: Ulimits? = nil,
                user: String? = nil,
                vcpus: Integer? = nil,
                volumes: Volumes? = nil) {
        self.command = command
        self.containerInstanceArn = containerInstanceArn
        self.environment = environment
        self.exitCode = exitCode
        self.image = image
        self.instanceType = instanceType
        self.jobRoleArn = jobRoleArn
        self.logStreamName = logStreamName
        self.memory = memory
        self.mountPoints = mountPoints
        self.networkInterfaces = networkInterfaces
        self.privileged = privileged
        self.readonlyRootFilesystem = readonlyRootFilesystem
        self.reason = reason
        self.resourceRequirements = resourceRequirements
        self.taskArn = taskArn
        self.ulimits = ulimits
        self.user = user
        self.vcpus = vcpus
        self.volumes = volumes
    }

    enum CodingKeys: String, CodingKey {
        case command
        case containerInstanceArn
        case environment
        case exitCode
        case image
        case instanceType
        case jobRoleArn
        case logStreamName
        case memory
        case mountPoints
        case networkInterfaces
        case privileged
        case readonlyRootFilesystem
        case reason
        case resourceRequirements
        case taskArn
        case ulimits
        case user
        case vcpus
        case volumes
    }

    public func validate() throws {
    }
}

public struct ContainerOverrides: Codable, Equatable {
    public var command: StringList?
    public var environment: EnvironmentVariables?
    public var instanceType: String?
    public var memory: Integer?
    public var resourceRequirements: ResourceRequirements?
    public var vcpus: Integer?

    public init(command: StringList? = nil,
                environment: EnvironmentVariables? = nil,
                instanceType: String? = nil,
                memory: Integer? = nil,
                resourceRequirements: ResourceRequirements? = nil,
                vcpus: Integer? = nil) {
        self.command = command
        self.environment = environment
        self.instanceType = instanceType
        self.memory = memory
        self.resourceRequirements = resourceRequirements
        self.vcpus = vcpus
    }

    enum CodingKeys: String, CodingKey {
        case command
        case environment
        case instanceType
        case memory
        case resourceRequirements
        case vcpus
    }

    public func validate() throws {
    }
}

public struct ContainerProperties: Codable, Equatable {
    public var command: StringList?
    public var environment: EnvironmentVariables?
    public var image: String?
    public var instanceType: String?
    public var jobRoleArn: String?
    public var memory: Integer?
    public var mountPoints: MountPoints?
    public var privileged: Boolean?
    public var readonlyRootFilesystem: Boolean?
    public var resourceRequirements: ResourceRequirements?
    public var ulimits: Ulimits?
    public var user: String?
    public var vcpus: Integer?
    public var volumes: Volumes?

    public init(command: StringList? = nil,
                environment: EnvironmentVariables? = nil,
                image: String? = nil,
                instanceType: String? = nil,
                jobRoleArn: String? = nil,
                memory: Integer? = nil,
                mountPoints: MountPoints? = nil,
                privileged: Boolean? = nil,
                readonlyRootFilesystem: Boolean? = nil,
                resourceRequirements: ResourceRequirements? = nil,
                ulimits: Ulimits? = nil,
                user: String? = nil,
                vcpus: Integer? = nil,
                volumes: Volumes? = nil) {
        self.command = command
        self.environment = environment
        self.image = image
        self.instanceType = instanceType
        self.jobRoleArn = jobRoleArn
        self.memory = memory
        self.mountPoints = mountPoints
        self.privileged = privileged
        self.readonlyRootFilesystem = readonlyRootFilesystem
        self.resourceRequirements = resourceRequirements
        self.ulimits = ulimits
        self.user = user
        self.vcpus = vcpus
        self.volumes = volumes
    }

    enum CodingKeys: String, CodingKey {
        case command
        case environment
        case image
        case instanceType
        case jobRoleArn
        case memory
        case mountPoints
        case privileged
        case readonlyRootFilesystem
        case resourceRequirements
        case ulimits
        case user
        case vcpus
        case volumes
    }

    public func validate() throws {
    }
}

public struct ContainerSummary: Codable, Equatable {
    public var exitCode: Integer?
    public var reason: String?

    public init(exitCode: Integer? = nil,
                reason: String? = nil) {
        self.exitCode = exitCode
        self.reason = reason
    }

    enum CodingKeys: String, CodingKey {
        case exitCode
        case reason
    }

    public func validate() throws {
    }
}

public struct CreateComputeEnvironmentRequest: Codable, Equatable {
    public var computeEnvironmentName: String
    public var computeResources: ComputeResource?
    public var serviceRole: String
    public var state: CEState?
    public var type: CEType

    public init(computeEnvironmentName: String,
                computeResources: ComputeResource? = nil,
                serviceRole: String,
                state: CEState? = nil,
                type: CEType) {
        self.computeEnvironmentName = computeEnvironmentName
        self.computeResources = computeResources
        self.serviceRole = serviceRole
        self.state = state
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case computeEnvironmentName
        case computeResources
        case serviceRole
        case state
        case type
    }

    public func validate() throws {
        try computeResources?.validate()
    }
}

public struct CreateComputeEnvironmentResponse: Codable, Equatable {
    public var computeEnvironmentArn: String?
    public var computeEnvironmentName: String?

    public init(computeEnvironmentArn: String? = nil,
                computeEnvironmentName: String? = nil) {
        self.computeEnvironmentArn = computeEnvironmentArn
        self.computeEnvironmentName = computeEnvironmentName
    }

    enum CodingKeys: String, CodingKey {
        case computeEnvironmentArn
        case computeEnvironmentName
    }

    public func validate() throws {
    }
}

public struct CreateJobQueueRequest: Codable, Equatable {
    public var computeEnvironmentOrder: ComputeEnvironmentOrders
    public var jobQueueName: String
    public var priority: Integer
    public var state: JQState?

    public init(computeEnvironmentOrder: ComputeEnvironmentOrders,
                jobQueueName: String,
                priority: Integer,
                state: JQState? = nil) {
        self.computeEnvironmentOrder = computeEnvironmentOrder
        self.jobQueueName = jobQueueName
        self.priority = priority
        self.state = state
    }

    enum CodingKeys: String, CodingKey {
        case computeEnvironmentOrder
        case jobQueueName
        case priority
        case state
    }

    public func validate() throws {
    }
}

public struct CreateJobQueueResponse: Codable, Equatable {
    public var jobQueueArn: String
    public var jobQueueName: String

    public init(jobQueueArn: String,
                jobQueueName: String) {
        self.jobQueueArn = jobQueueArn
        self.jobQueueName = jobQueueName
    }

    enum CodingKeys: String, CodingKey {
        case jobQueueArn
        case jobQueueName
    }

    public func validate() throws {
    }
}

public struct DeleteComputeEnvironmentRequest: Codable, Equatable {
    public var computeEnvironment: String

    public init(computeEnvironment: String) {
        self.computeEnvironment = computeEnvironment
    }

    enum CodingKeys: String, CodingKey {
        case computeEnvironment
    }

    public func validate() throws {
    }
}

public struct DeleteComputeEnvironmentResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteJobQueueRequest: Codable, Equatable {
    public var jobQueue: String

    public init(jobQueue: String) {
        self.jobQueue = jobQueue
    }

    enum CodingKeys: String, CodingKey {
        case jobQueue
    }

    public func validate() throws {
    }
}

public struct DeleteJobQueueResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeregisterJobDefinitionRequest: Codable, Equatable {
    public var jobDefinition: String

    public init(jobDefinition: String) {
        self.jobDefinition = jobDefinition
    }

    enum CodingKeys: String, CodingKey {
        case jobDefinition
    }

    public func validate() throws {
    }
}

public struct DeregisterJobDefinitionResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DescribeComputeEnvironmentsRequest: Codable, Equatable {
    public var computeEnvironments: StringList?
    public var maxResults: Integer?
    public var nextToken: String?

    public init(computeEnvironments: StringList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil) {
        self.computeEnvironments = computeEnvironments
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case computeEnvironments
        case maxResults
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeComputeEnvironmentsResponse: Codable, Equatable {
    public var computeEnvironments: ComputeEnvironmentDetailList?
    public var nextToken: String?

    public init(computeEnvironments: ComputeEnvironmentDetailList? = nil,
                nextToken: String? = nil) {
        self.computeEnvironments = computeEnvironments
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case computeEnvironments
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeJobDefinitionsRequest: Codable, Equatable {
    public var jobDefinitionName: String?
    public var jobDefinitions: StringList?
    public var maxResults: Integer?
    public var nextToken: String?
    public var status: String?

    public init(jobDefinitionName: String? = nil,
                jobDefinitions: StringList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil,
                status: String? = nil) {
        self.jobDefinitionName = jobDefinitionName
        self.jobDefinitions = jobDefinitions
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case jobDefinitionName
        case jobDefinitions
        case maxResults
        case nextToken
        case status
    }

    public func validate() throws {
    }
}

public struct DescribeJobDefinitionsResponse: Codable, Equatable {
    public var jobDefinitions: JobDefinitionList?
    public var nextToken: String?

    public init(jobDefinitions: JobDefinitionList? = nil,
                nextToken: String? = nil) {
        self.jobDefinitions = jobDefinitions
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case jobDefinitions
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeJobQueuesRequest: Codable, Equatable {
    public var jobQueues: StringList?
    public var maxResults: Integer?
    public var nextToken: String?

    public init(jobQueues: StringList? = nil,
                maxResults: Integer? = nil,
                nextToken: String? = nil) {
        self.jobQueues = jobQueues
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case jobQueues
        case maxResults
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeJobQueuesResponse: Codable, Equatable {
    public var jobQueues: JobQueueDetailList?
    public var nextToken: String?

    public init(jobQueues: JobQueueDetailList? = nil,
                nextToken: String? = nil) {
        self.jobQueues = jobQueues
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case jobQueues
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeJobsRequest: Codable, Equatable {
    public var jobs: StringList

    public init(jobs: StringList) {
        self.jobs = jobs
    }

    enum CodingKeys: String, CodingKey {
        case jobs
    }

    public func validate() throws {
    }
}

public struct DescribeJobsResponse: Codable, Equatable {
    public var jobs: JobDetailList?

    public init(jobs: JobDetailList? = nil) {
        self.jobs = jobs
    }

    enum CodingKeys: String, CodingKey {
        case jobs
    }

    public func validate() throws {
    }
}

public struct Host: Codable, Equatable {
    public var sourcePath: String?

    public init(sourcePath: String? = nil) {
        self.sourcePath = sourcePath
    }

    enum CodingKeys: String, CodingKey {
        case sourcePath
    }

    public func validate() throws {
    }
}

public struct JobDefinition: Codable, Equatable {
    public var containerProperties: ContainerProperties?
    public var jobDefinitionArn: String
    public var jobDefinitionName: String
    public var nodeProperties: NodeProperties?
    public var parameters: ParametersMap?
    public var retryStrategy: RetryStrategy?
    public var revision: Integer
    public var status: String?
    public var timeout: JobTimeout?
    public var type: String

    public init(containerProperties: ContainerProperties? = nil,
                jobDefinitionArn: String,
                jobDefinitionName: String,
                nodeProperties: NodeProperties? = nil,
                parameters: ParametersMap? = nil,
                retryStrategy: RetryStrategy? = nil,
                revision: Integer,
                status: String? = nil,
                timeout: JobTimeout? = nil,
                type: String) {
        self.containerProperties = containerProperties
        self.jobDefinitionArn = jobDefinitionArn
        self.jobDefinitionName = jobDefinitionName
        self.nodeProperties = nodeProperties
        self.parameters = parameters
        self.retryStrategy = retryStrategy
        self.revision = revision
        self.status = status
        self.timeout = timeout
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case containerProperties
        case jobDefinitionArn
        case jobDefinitionName
        case nodeProperties
        case parameters
        case retryStrategy
        case revision
        case status
        case timeout
        case type
    }

    public func validate() throws {
        try containerProperties?.validate()
        try nodeProperties?.validate()
        try retryStrategy?.validate()
        try timeout?.validate()
    }
}

public struct JobDependency: Codable, Equatable {
    public var jobId: String?
    public var type: ArrayJobDependency?

    public init(jobId: String? = nil,
                type: ArrayJobDependency? = nil) {
        self.jobId = jobId
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case jobId
        case type
    }

    public func validate() throws {
    }
}

public struct JobDetail: Codable, Equatable {
    public var arrayProperties: ArrayPropertiesDetail?
    public var attempts: AttemptDetails?
    public var container: ContainerDetail?
    public var createdAt: Long?
    public var dependsOn: JobDependencyList?
    public var jobDefinition: String
    public var jobId: String
    public var jobName: String
    public var jobQueue: String
    public var nodeDetails: NodeDetails?
    public var nodeProperties: NodeProperties?
    public var parameters: ParametersMap?
    public var retryStrategy: RetryStrategy?
    public var startedAt: Long
    public var status: JobStatus
    public var statusReason: String?
    public var stoppedAt: Long?
    public var timeout: JobTimeout?

    public init(arrayProperties: ArrayPropertiesDetail? = nil,
                attempts: AttemptDetails? = nil,
                container: ContainerDetail? = nil,
                createdAt: Long? = nil,
                dependsOn: JobDependencyList? = nil,
                jobDefinition: String,
                jobId: String,
                jobName: String,
                jobQueue: String,
                nodeDetails: NodeDetails? = nil,
                nodeProperties: NodeProperties? = nil,
                parameters: ParametersMap? = nil,
                retryStrategy: RetryStrategy? = nil,
                startedAt: Long,
                status: JobStatus,
                statusReason: String? = nil,
                stoppedAt: Long? = nil,
                timeout: JobTimeout? = nil) {
        self.arrayProperties = arrayProperties
        self.attempts = attempts
        self.container = container
        self.createdAt = createdAt
        self.dependsOn = dependsOn
        self.jobDefinition = jobDefinition
        self.jobId = jobId
        self.jobName = jobName
        self.jobQueue = jobQueue
        self.nodeDetails = nodeDetails
        self.nodeProperties = nodeProperties
        self.parameters = parameters
        self.retryStrategy = retryStrategy
        self.startedAt = startedAt
        self.status = status
        self.statusReason = statusReason
        self.stoppedAt = stoppedAt
        self.timeout = timeout
    }

    enum CodingKeys: String, CodingKey {
        case arrayProperties
        case attempts
        case container
        case createdAt
        case dependsOn
        case jobDefinition
        case jobId
        case jobName
        case jobQueue
        case nodeDetails
        case nodeProperties
        case parameters
        case retryStrategy
        case startedAt
        case status
        case statusReason
        case stoppedAt
        case timeout
    }

    public func validate() throws {
        try arrayProperties?.validate()
        try container?.validate()
        try nodeDetails?.validate()
        try nodeProperties?.validate()
        try retryStrategy?.validate()
        try timeout?.validate()
    }
}

public struct JobQueueDetail: Codable, Equatable {
    public var computeEnvironmentOrder: ComputeEnvironmentOrders
    public var jobQueueArn: String
    public var jobQueueName: String
    public var priority: Integer
    public var state: JQState
    public var status: JQStatus?
    public var statusReason: String?

    public init(computeEnvironmentOrder: ComputeEnvironmentOrders,
                jobQueueArn: String,
                jobQueueName: String,
                priority: Integer,
                state: JQState,
                status: JQStatus? = nil,
                statusReason: String? = nil) {
        self.computeEnvironmentOrder = computeEnvironmentOrder
        self.jobQueueArn = jobQueueArn
        self.jobQueueName = jobQueueName
        self.priority = priority
        self.state = state
        self.status = status
        self.statusReason = statusReason
    }

    enum CodingKeys: String, CodingKey {
        case computeEnvironmentOrder
        case jobQueueArn
        case jobQueueName
        case priority
        case state
        case status
        case statusReason
    }

    public func validate() throws {
    }
}

public struct JobSummary: Codable, Equatable {
    public var arrayProperties: ArrayPropertiesSummary?
    public var container: ContainerSummary?
    public var createdAt: Long?
    public var jobId: String
    public var jobName: String
    public var nodeProperties: NodePropertiesSummary?
    public var startedAt: Long?
    public var status: JobStatus?
    public var statusReason: String?
    public var stoppedAt: Long?

    public init(arrayProperties: ArrayPropertiesSummary? = nil,
                container: ContainerSummary? = nil,
                createdAt: Long? = nil,
                jobId: String,
                jobName: String,
                nodeProperties: NodePropertiesSummary? = nil,
                startedAt: Long? = nil,
                status: JobStatus? = nil,
                statusReason: String? = nil,
                stoppedAt: Long? = nil) {
        self.arrayProperties = arrayProperties
        self.container = container
        self.createdAt = createdAt
        self.jobId = jobId
        self.jobName = jobName
        self.nodeProperties = nodeProperties
        self.startedAt = startedAt
        self.status = status
        self.statusReason = statusReason
        self.stoppedAt = stoppedAt
    }

    enum CodingKeys: String, CodingKey {
        case arrayProperties
        case container
        case createdAt
        case jobId
        case jobName
        case nodeProperties
        case startedAt
        case status
        case statusReason
        case stoppedAt
    }

    public func validate() throws {
        try arrayProperties?.validate()
        try container?.validate()
        try nodeProperties?.validate()
    }
}

public struct JobTimeout: Codable, Equatable {
    public var attemptDurationSeconds: Integer?

    public init(attemptDurationSeconds: Integer? = nil) {
        self.attemptDurationSeconds = attemptDurationSeconds
    }

    enum CodingKeys: String, CodingKey {
        case attemptDurationSeconds
    }

    public func validate() throws {
    }
}

public struct KeyValuePair: Codable, Equatable {
    public var name: String?
    public var value: String?

    public init(name: String? = nil,
                value: String? = nil) {
        self.name = name
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case name
        case value
    }

    public func validate() throws {
    }
}

public struct LaunchTemplateSpecification: Codable, Equatable {
    public var launchTemplateId: String?
    public var launchTemplateName: String?
    public var version: String?

    public init(launchTemplateId: String? = nil,
                launchTemplateName: String? = nil,
                version: String? = nil) {
        self.launchTemplateId = launchTemplateId
        self.launchTemplateName = launchTemplateName
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case launchTemplateId
        case launchTemplateName
        case version
    }

    public func validate() throws {
    }
}

public struct ListJobsRequest: Codable, Equatable {
    public var arrayJobId: String?
    public var jobQueue: String?
    public var jobStatus: JobStatus?
    public var maxResults: Integer?
    public var multiNodeJobId: String?
    public var nextToken: String?

    public init(arrayJobId: String? = nil,
                jobQueue: String? = nil,
                jobStatus: JobStatus? = nil,
                maxResults: Integer? = nil,
                multiNodeJobId: String? = nil,
                nextToken: String? = nil) {
        self.arrayJobId = arrayJobId
        self.jobQueue = jobQueue
        self.jobStatus = jobStatus
        self.maxResults = maxResults
        self.multiNodeJobId = multiNodeJobId
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case arrayJobId
        case jobQueue
        case jobStatus
        case maxResults
        case multiNodeJobId
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListJobsResponse: Codable, Equatable {
    public var jobSummaryList: JobSummaryList
    public var nextToken: String?

    public init(jobSummaryList: JobSummaryList,
                nextToken: String? = nil) {
        self.jobSummaryList = jobSummaryList
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case jobSummaryList
        case nextToken
    }

    public func validate() throws {
    }
}

public struct MountPoint: Codable, Equatable {
    public var containerPath: String?
    public var readOnly: Boolean?
    public var sourceVolume: String?

    public init(containerPath: String? = nil,
                readOnly: Boolean? = nil,
                sourceVolume: String? = nil) {
        self.containerPath = containerPath
        self.readOnly = readOnly
        self.sourceVolume = sourceVolume
    }

    enum CodingKeys: String, CodingKey {
        case containerPath
        case readOnly
        case sourceVolume
    }

    public func validate() throws {
    }
}

public struct NetworkInterface: Codable, Equatable {
    public var attachmentId: String?
    public var ipv6Address: String?
    public var privateIpv4Address: String?

    public init(attachmentId: String? = nil,
                ipv6Address: String? = nil,
                privateIpv4Address: String? = nil) {
        self.attachmentId = attachmentId
        self.ipv6Address = ipv6Address
        self.privateIpv4Address = privateIpv4Address
    }

    enum CodingKeys: String, CodingKey {
        case attachmentId
        case ipv6Address
        case privateIpv4Address
    }

    public func validate() throws {
    }
}

public struct NodeDetails: Codable, Equatable {
    public var isMainNode: Boolean?
    public var nodeIndex: Integer?

    public init(isMainNode: Boolean? = nil,
                nodeIndex: Integer? = nil) {
        self.isMainNode = isMainNode
        self.nodeIndex = nodeIndex
    }

    enum CodingKeys: String, CodingKey {
        case isMainNode
        case nodeIndex
    }

    public func validate() throws {
    }
}

public struct NodeOverrides: Codable, Equatable {
    public var nodePropertyOverrides: NodePropertyOverrides?
    public var numNodes: Integer?

    public init(nodePropertyOverrides: NodePropertyOverrides? = nil,
                numNodes: Integer? = nil) {
        self.nodePropertyOverrides = nodePropertyOverrides
        self.numNodes = numNodes
    }

    enum CodingKeys: String, CodingKey {
        case nodePropertyOverrides
        case numNodes
    }

    public func validate() throws {
    }
}

public struct NodeProperties: Codable, Equatable {
    public var mainNode: Integer
    public var nodeRangeProperties: NodeRangeProperties
    public var numNodes: Integer

    public init(mainNode: Integer,
                nodeRangeProperties: NodeRangeProperties,
                numNodes: Integer) {
        self.mainNode = mainNode
        self.nodeRangeProperties = nodeRangeProperties
        self.numNodes = numNodes
    }

    enum CodingKeys: String, CodingKey {
        case mainNode
        case nodeRangeProperties
        case numNodes
    }

    public func validate() throws {
    }
}

public struct NodePropertiesSummary: Codable, Equatable {
    public var isMainNode: Boolean?
    public var nodeIndex: Integer?
    public var numNodes: Integer?

    public init(isMainNode: Boolean? = nil,
                nodeIndex: Integer? = nil,
                numNodes: Integer? = nil) {
        self.isMainNode = isMainNode
        self.nodeIndex = nodeIndex
        self.numNodes = numNodes
    }

    enum CodingKeys: String, CodingKey {
        case isMainNode
        case nodeIndex
        case numNodes
    }

    public func validate() throws {
    }
}

public struct NodePropertyOverride: Codable, Equatable {
    public var containerOverrides: ContainerOverrides?
    public var targetNodes: String

    public init(containerOverrides: ContainerOverrides? = nil,
                targetNodes: String) {
        self.containerOverrides = containerOverrides
        self.targetNodes = targetNodes
    }

    enum CodingKeys: String, CodingKey {
        case containerOverrides
        case targetNodes
    }

    public func validate() throws {
        try containerOverrides?.validate()
    }
}

public struct NodeRangeProperty: Codable, Equatable {
    public var container: ContainerProperties?
    public var targetNodes: String

    public init(container: ContainerProperties? = nil,
                targetNodes: String) {
        self.container = container
        self.targetNodes = targetNodes
    }

    enum CodingKeys: String, CodingKey {
        case container
        case targetNodes
    }

    public func validate() throws {
        try container?.validate()
    }
}

public struct RegisterJobDefinitionRequest: Codable, Equatable {
    public var containerProperties: ContainerProperties?
    public var jobDefinitionName: String
    public var nodeProperties: NodeProperties?
    public var parameters: ParametersMap?
    public var retryStrategy: RetryStrategy?
    public var timeout: JobTimeout?
    public var type: JobDefinitionType

    public init(containerProperties: ContainerProperties? = nil,
                jobDefinitionName: String,
                nodeProperties: NodeProperties? = nil,
                parameters: ParametersMap? = nil,
                retryStrategy: RetryStrategy? = nil,
                timeout: JobTimeout? = nil,
                type: JobDefinitionType) {
        self.containerProperties = containerProperties
        self.jobDefinitionName = jobDefinitionName
        self.nodeProperties = nodeProperties
        self.parameters = parameters
        self.retryStrategy = retryStrategy
        self.timeout = timeout
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case containerProperties
        case jobDefinitionName
        case nodeProperties
        case parameters
        case retryStrategy
        case timeout
        case type
    }

    public func validate() throws {
        try containerProperties?.validate()
        try nodeProperties?.validate()
        try retryStrategy?.validate()
        try timeout?.validate()
    }
}

public struct RegisterJobDefinitionResponse: Codable, Equatable {
    public var jobDefinitionArn: String
    public var jobDefinitionName: String
    public var revision: Integer

    public init(jobDefinitionArn: String,
                jobDefinitionName: String,
                revision: Integer) {
        self.jobDefinitionArn = jobDefinitionArn
        self.jobDefinitionName = jobDefinitionName
        self.revision = revision
    }

    enum CodingKeys: String, CodingKey {
        case jobDefinitionArn
        case jobDefinitionName
        case revision
    }

    public func validate() throws {
    }
}

public struct ResourceRequirement: Codable, Equatable {
    public var type: ResourceType
    public var value: String

    public init(type: ResourceType,
                value: String) {
        self.type = type
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case type
        case value
    }

    public func validate() throws {
    }
}

public struct RetryStrategy: Codable, Equatable {
    public var attempts: Integer?

    public init(attempts: Integer? = nil) {
        self.attempts = attempts
    }

    enum CodingKeys: String, CodingKey {
        case attempts
    }

    public func validate() throws {
    }
}

public struct ServerException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct SubmitJobRequest: Codable, Equatable {
    public var arrayProperties: ArrayProperties?
    public var containerOverrides: ContainerOverrides?
    public var dependsOn: JobDependencyList?
    public var jobDefinition: String
    public var jobName: String
    public var jobQueue: String
    public var nodeOverrides: NodeOverrides?
    public var parameters: ParametersMap?
    public var retryStrategy: RetryStrategy?
    public var timeout: JobTimeout?

    public init(arrayProperties: ArrayProperties? = nil,
                containerOverrides: ContainerOverrides? = nil,
                dependsOn: JobDependencyList? = nil,
                jobDefinition: String,
                jobName: String,
                jobQueue: String,
                nodeOverrides: NodeOverrides? = nil,
                parameters: ParametersMap? = nil,
                retryStrategy: RetryStrategy? = nil,
                timeout: JobTimeout? = nil) {
        self.arrayProperties = arrayProperties
        self.containerOverrides = containerOverrides
        self.dependsOn = dependsOn
        self.jobDefinition = jobDefinition
        self.jobName = jobName
        self.jobQueue = jobQueue
        self.nodeOverrides = nodeOverrides
        self.parameters = parameters
        self.retryStrategy = retryStrategy
        self.timeout = timeout
    }

    enum CodingKeys: String, CodingKey {
        case arrayProperties
        case containerOverrides
        case dependsOn
        case jobDefinition
        case jobName
        case jobQueue
        case nodeOverrides
        case parameters
        case retryStrategy
        case timeout
    }

    public func validate() throws {
        try arrayProperties?.validate()
        try containerOverrides?.validate()
        try nodeOverrides?.validate()
        try retryStrategy?.validate()
        try timeout?.validate()
    }
}

public struct SubmitJobResponse: Codable, Equatable {
    public var jobId: String
    public var jobName: String

    public init(jobId: String,
                jobName: String) {
        self.jobId = jobId
        self.jobName = jobName
    }

    enum CodingKeys: String, CodingKey {
        case jobId
        case jobName
    }

    public func validate() throws {
    }
}

public struct TerminateJobRequest: Codable, Equatable {
    public var jobId: String
    public var reason: String

    public init(jobId: String,
                reason: String) {
        self.jobId = jobId
        self.reason = reason
    }

    enum CodingKeys: String, CodingKey {
        case jobId
        case reason
    }

    public func validate() throws {
    }
}

public struct TerminateJobResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct Ulimit: Codable, Equatable {
    public var hardLimit: Integer
    public var name: String
    public var softLimit: Integer

    public init(hardLimit: Integer,
                name: String,
                softLimit: Integer) {
        self.hardLimit = hardLimit
        self.name = name
        self.softLimit = softLimit
    }

    enum CodingKeys: String, CodingKey {
        case hardLimit
        case name
        case softLimit
    }

    public func validate() throws {
    }
}

public struct UpdateComputeEnvironmentRequest: Codable, Equatable {
    public var computeEnvironment: String
    public var computeResources: ComputeResourceUpdate?
    public var serviceRole: String?
    public var state: CEState?

    public init(computeEnvironment: String,
                computeResources: ComputeResourceUpdate? = nil,
                serviceRole: String? = nil,
                state: CEState? = nil) {
        self.computeEnvironment = computeEnvironment
        self.computeResources = computeResources
        self.serviceRole = serviceRole
        self.state = state
    }

    enum CodingKeys: String, CodingKey {
        case computeEnvironment
        case computeResources
        case serviceRole
        case state
    }

    public func validate() throws {
        try computeResources?.validate()
    }
}

public struct UpdateComputeEnvironmentResponse: Codable, Equatable {
    public var computeEnvironmentArn: String?
    public var computeEnvironmentName: String?

    public init(computeEnvironmentArn: String? = nil,
                computeEnvironmentName: String? = nil) {
        self.computeEnvironmentArn = computeEnvironmentArn
        self.computeEnvironmentName = computeEnvironmentName
    }

    enum CodingKeys: String, CodingKey {
        case computeEnvironmentArn
        case computeEnvironmentName
    }

    public func validate() throws {
    }
}

public struct UpdateJobQueueRequest: Codable, Equatable {
    public var computeEnvironmentOrder: ComputeEnvironmentOrders?
    public var jobQueue: String
    public var priority: Integer?
    public var state: JQState?

    public init(computeEnvironmentOrder: ComputeEnvironmentOrders? = nil,
                jobQueue: String,
                priority: Integer? = nil,
                state: JQState? = nil) {
        self.computeEnvironmentOrder = computeEnvironmentOrder
        self.jobQueue = jobQueue
        self.priority = priority
        self.state = state
    }

    enum CodingKeys: String, CodingKey {
        case computeEnvironmentOrder
        case jobQueue
        case priority
        case state
    }

    public func validate() throws {
    }
}

public struct UpdateJobQueueResponse: Codable, Equatable {
    public var jobQueueArn: String?
    public var jobQueueName: String?

    public init(jobQueueArn: String? = nil,
                jobQueueName: String? = nil) {
        self.jobQueueArn = jobQueueArn
        self.jobQueueName = jobQueueName
    }

    enum CodingKeys: String, CodingKey {
        case jobQueueArn
        case jobQueueName
    }

    public func validate() throws {
    }
}

public struct Volume: Codable, Equatable {
    public var host: Host?
    public var name: String?

    public init(host: Host? = nil,
                name: String? = nil) {
        self.host = host
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case host
        case name
    }

    public func validate() throws {
        try host?.validate()
    }
}
