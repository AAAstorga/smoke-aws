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
// BatchModelTypes.swift
// BatchModel
//

import Foundation

/**
 Enumeration restricting the values of the ArrayJobDependency field.
 */
public enum ArrayJobDependency: String, Codable, CustomStringConvertible {
    case nToN = "N_TO_N"
    case sequential = "SEQUENTIAL"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ArrayJobDependency = .nToN
}

/**
 Type definition for the ArrayJobStatusSummary field.
 */
public typealias ArrayJobStatusSummary = [String: Integer]

/**
 Type definition for the AttemptDetails field.
 */
public typealias AttemptDetails = [AttemptDetail]

/**
 Type definition for the Boolean field.
 */
public typealias Boolean = Bool

/**
 Enumeration restricting the values of the CEState field.
 */
public enum CEState: String, Codable, CustomStringConvertible {
    case disabled = "DISABLED"
    case enabled = "ENABLED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CEState = .disabled
}

/**
 Enumeration restricting the values of the CEStatus field.
 */
public enum CEStatus: String, Codable, CustomStringConvertible {
    case creating = "CREATING"
    case deleted = "DELETED"
    case deleting = "DELETING"
    case invalid = "INVALID"
    case updating = "UPDATING"
    case valid = "VALID"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CEStatus = .creating
}

/**
 Enumeration restricting the values of the CEType field.
 */
public enum CEType: String, Codable, CustomStringConvertible {
    case managed = "MANAGED"
    case unmanaged = "UNMANAGED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CEType = .managed
}

/**
 Enumeration restricting the values of the CRType field.
 */
public enum CRType: String, Codable, CustomStringConvertible {
    case ec2 = "EC2"
    case spot = "SPOT"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CRType = .ec2
}

/**
 Type definition for the ComputeEnvironmentDetailList field.
 */
public typealias ComputeEnvironmentDetailList = [ComputeEnvironmentDetail]

/**
 Type definition for the ComputeEnvironmentOrders field.
 */
public typealias ComputeEnvironmentOrders = [ComputeEnvironmentOrder]

/**
 Type definition for the EnvironmentVariables field.
 */
public typealias EnvironmentVariables = [KeyValuePair]

/**
 Type definition for the Integer field.
 */
public typealias Integer = Int

/**
 Enumeration restricting the values of the JQState field.
 */
public enum JQState: String, Codable, CustomStringConvertible {
    case disabled = "DISABLED"
    case enabled = "ENABLED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: JQState = .disabled
}

/**
 Enumeration restricting the values of the JQStatus field.
 */
public enum JQStatus: String, Codable, CustomStringConvertible {
    case creating = "CREATING"
    case deleted = "DELETED"
    case deleting = "DELETING"
    case invalid = "INVALID"
    case updating = "UPDATING"
    case valid = "VALID"

    public var description: String {
        return rawValue
    }
    
    public static let __default: JQStatus = .creating
}

/**
 Type definition for the JobDefinitionList field.
 */
public typealias JobDefinitionList = [JobDefinition]

/**
 Enumeration restricting the values of the JobDefinitionType field.
 */
public enum JobDefinitionType: String, Codable, CustomStringConvertible {
    case container
    case multinode

    public var description: String {
        return rawValue
    }
    
    public static let __default: JobDefinitionType = .container
}

/**
 Type definition for the JobDependencyList field.
 */
public typealias JobDependencyList = [JobDependency]

/**
 Type definition for the JobDetailList field.
 */
public typealias JobDetailList = [JobDetail]

/**
 Type definition for the JobQueueDetailList field.
 */
public typealias JobQueueDetailList = [JobQueueDetail]

/**
 Enumeration restricting the values of the JobStatus field.
 */
public enum JobStatus: String, Codable, CustomStringConvertible {
    case failed = "FAILED"
    case pending = "PENDING"
    case runnable = "RUNNABLE"
    case running = "RUNNING"
    case starting = "STARTING"
    case submitted = "SUBMITTED"
    case succeeded = "SUCCEEDED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: JobStatus = .failed
}

/**
 Type definition for the JobSummaryList field.
 */
public typealias JobSummaryList = [JobSummary]

/**
 Type definition for the Long field.
 */
public typealias Long = Int

/**
 Type definition for the MountPoints field.
 */
public typealias MountPoints = [MountPoint]

/**
 Type definition for the NetworkInterfaceList field.
 */
public typealias NetworkInterfaceList = [NetworkInterface]

/**
 Type definition for the NodePropertyOverrides field.
 */
public typealias NodePropertyOverrides = [NodePropertyOverride]

/**
 Type definition for the NodeRangeProperties field.
 */
public typealias NodeRangeProperties = [NodeRangeProperty]

/**
 Type definition for the ParametersMap field.
 */
public typealias ParametersMap = [String: String]

/**
 Type definition for the ResourceRequirements field.
 */
public typealias ResourceRequirements = [ResourceRequirement]

/**
 Enumeration restricting the values of the ResourceType field.
 */
public enum ResourceType: String, Codable, CustomStringConvertible {
    case gpu = "GPU"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ResourceType = .gpu
}

/**
 Type definition for the StringList field.
 */
public typealias StringList = [String]

/**
 Type definition for the TagsMap field.
 */
public typealias TagsMap = [String: String]

/**
 Type definition for the Ulimits field.
 */
public typealias Ulimits = [Ulimit]

/**
 Type definition for the Volumes field.
 */
public typealias Volumes = [Volume]
