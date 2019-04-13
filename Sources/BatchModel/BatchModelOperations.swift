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
// BatchModelOperations.swift
// BatchModel
//

import Foundation

/**
 Operation enumeration for the BatchModel.
 */
public enum BatchModelOperations: String {
    case cancelJob = "CancelJob"
    case createComputeEnvironment = "CreateComputeEnvironment"
    case createJobQueue = "CreateJobQueue"
    case deleteComputeEnvironment = "DeleteComputeEnvironment"
    case deleteJobQueue = "DeleteJobQueue"
    case deregisterJobDefinition = "DeregisterJobDefinition"
    case describeComputeEnvironments = "DescribeComputeEnvironments"
    case describeJobDefinitions = "DescribeJobDefinitions"
    case describeJobQueues = "DescribeJobQueues"
    case describeJobs = "DescribeJobs"
    case listJobs = "ListJobs"
    case registerJobDefinition = "RegisterJobDefinition"
    case submitJob = "SubmitJob"
    case terminateJob = "TerminateJob"
    case updateComputeEnvironment = "UpdateComputeEnvironment"
    case updateJobQueue = "UpdateJobQueue"

    public var operationPath: String {
        switch self {
        case .cancelJob:
            return "/v1/canceljob"
        case .createComputeEnvironment:
            return "/v1/createcomputeenvironment"
        case .createJobQueue:
            return "/v1/createjobqueue"
        case .deleteComputeEnvironment:
            return "/v1/deletecomputeenvironment"
        case .deleteJobQueue:
            return "/v1/deletejobqueue"
        case .deregisterJobDefinition:
            return "/v1/deregisterjobdefinition"
        case .describeComputeEnvironments:
            return "/v1/describecomputeenvironments"
        case .describeJobDefinitions:
            return "/v1/describejobdefinitions"
        case .describeJobQueues:
            return "/v1/describejobqueues"
        case .describeJobs:
            return "/v1/describejobs"
        case .listJobs:
            return "/v1/listjobs"
        case .registerJobDefinition:
            return "/v1/registerjobdefinition"
        case .submitJob:
            return "/v1/submitjob"
        case .terminateJob:
            return "/v1/terminatejob"
        case .updateComputeEnvironment:
            return "/v1/updatecomputeenvironment"
        case .updateJobQueue:
            return "/v1/updatejobqueue"
        }
    }
}
