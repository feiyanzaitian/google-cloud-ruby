# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module ServiceControl
      module V1
        # Request message for the AllocateQuota method.
        # @!attribute [rw] service_name
        #   @return [::String]
        #     Name of the service as specified in the service configuration. For example,
        #     `"pubsub.googleapis.com"`.
        #
        #     See [google.api.Service][google.api.Service] for the definition of a service name.
        # @!attribute [rw] allocate_operation
        #   @return [::Google::Cloud::ServiceControl::V1::QuotaOperation]
        #     Operation that describes the quota allocation.
        # @!attribute [rw] service_config_id
        #   @return [::String]
        #     Specifies which version of service configuration should be used to process
        #     the request. If unspecified or no matching version can be found, the latest
        #     one will be used.
        class AllocateQuotaRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents information regarding a quota operation.
        # @!attribute [rw] operation_id
        #   @return [::String]
        #     Identity of the operation. This is expected to be unique within the scope
        #     of the service that generated the operation, and guarantees idempotency in
        #     case of retries.
        #
        #     In order to ensure best performance and latency in the Quota backends,
        #     operation_ids are optimally associated with time, so that related
        #     operations can be accessed fast in storage. For this reason, the
        #     recommended token for services that intend to operate at a high QPS is
        #     Unix time in nanos + UUID
        # @!attribute [rw] method_name
        #   @return [::String]
        #     Fully qualified name of the API method for which this quota operation is
        #     requested. This name is used for matching quota rules or metric rules and
        #     billing status rules defined in service configuration.
        #
        #     This field should not be set if any of the following is true:
        #     (1) the quota operation is performed on non-API resources.
        #     (2) quota_metrics is set because the caller is doing quota override.
        #
        #
        #     Example of an RPC method name:
        #         google.example.library.v1.LibraryService.CreateShelf
        # @!attribute [rw] consumer_id
        #   @return [::String]
        #     Identity of the consumer for whom this quota operation is being performed.
        #
        #     This can be in one of the following formats:
        #       project:<project_id>,
        #       project_number:<project_number>,
        #       api_key:<api_key>.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels describing the operation.
        # @!attribute [rw] quota_metrics
        #   @return [::Array<::Google::Cloud::ServiceControl::V1::MetricValueSet>]
        #     Represents information about this operation. Each MetricValueSet
        #     corresponds to a metric defined in the service configuration.
        #     The data type used in the MetricValueSet must agree with
        #     the data type specified in the metric definition.
        #
        #     Within a single operation, it is not allowed to have more than one
        #     MetricValue instances that have the same metric names and identical
        #     label value combinations. If a request has such duplicated MetricValue
        #     instances, the entire request is rejected with
        #     an invalid argument error.
        #
        #     This field is mutually exclusive with method_name.
        # @!attribute [rw] quota_mode
        #   @return [::Google::Cloud::ServiceControl::V1::QuotaOperation::QuotaMode]
        #     Quota mode for this operation.
        class QuotaOperation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Supported quota modes.
          module QuotaMode
            # Guard against implicit default. Must not be used.
            UNSPECIFIED = 0

            # For AllocateQuota request, allocates quota for the amount specified in
            # the service configuration or specified using the quota metrics. If the
            # amount is higher than the available quota, allocation error will be
            # returned and no quota will be allocated.
            # If multiple quotas are part of the request, and one fails, none of the
            # quotas are allocated or released.
            NORMAL = 1

            # The operation allocates quota for the amount specified in the service
            # configuration or specified using the quota metrics. If the amount is
            # higher than the available quota, request does not fail but all available
            # quota will be allocated.
            # For rate quota, BEST_EFFORT will continue to deduct from other groups
            # even if one does not have enough quota. For allocation, it will find the
            # minimum available amount across all groups and deduct that amount from
            # all the affected groups.
            BEST_EFFORT = 2

            # For AllocateQuota request, only checks if there is enough quota
            # available and does not change the available quota. No lock is placed on
            # the available quota either.
            CHECK_ONLY = 3

            # Unimplemented. When used in AllocateQuotaRequest, this returns the
            # effective quota limit(s) in the response, and no quota check will be
            # performed. Not supported for other requests, and even for
            # AllocateQuotaRequest, this is currently supported only for allowlisted
            # services.
            QUERY_ONLY = 4

            # The operation allocates quota for the amount specified in the service
            # configuration or specified using the quota metrics. If the requested
            # amount is higher than the available quota, request does not fail and
            # remaining quota would become negative (going over the limit).
            # Not supported for Rate Quota.
            ADJUST_ONLY = 5
          end
        end

        # Response message for the AllocateQuota method.
        # @!attribute [rw] operation_id
        #   @return [::String]
        #     The same operation_id value used in the AllocateQuotaRequest. Used for
        #     logging and diagnostics purposes.
        # @!attribute [rw] allocate_errors
        #   @return [::Array<::Google::Cloud::ServiceControl::V1::QuotaError>]
        #     Indicates the decision of the allocate.
        # @!attribute [rw] quota_metrics
        #   @return [::Array<::Google::Cloud::ServiceControl::V1::MetricValueSet>]
        #     Quota metrics to indicate the result of allocation. Depending on the
        #     request, one or more of the following metrics will be included:
        #
        #     1. Per quota group or per quota metric incremental usage will be specified
        #     using the following delta metric :
        #       "serviceruntime.googleapis.com/api/consumer/quota_used_count"
        #
        #     2. The quota limit reached condition will be specified using the following
        #     boolean metric :
        #       "serviceruntime.googleapis.com/quota/exceeded"
        # @!attribute [rw] service_config_id
        #   @return [::String]
        #     ID of the actual config used to process the request.
        class AllocateQuotaResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents error information for {::Google::Cloud::ServiceControl::V1::QuotaOperation QuotaOperation}.
        # @!attribute [rw] code
        #   @return [::Google::Cloud::ServiceControl::V1::QuotaError::Code]
        #     Error code.
        # @!attribute [rw] subject
        #   @return [::String]
        #     Subject to whom this error applies. See the specific enum for more details
        #     on this field. For example, "clientip:<ip address of client>" or
        #     "project:<Google developer project id>".
        # @!attribute [rw] description
        #   @return [::String]
        #     Free-form text that provides details on the cause of the error.
        # @!attribute [rw] status
        #   @return [::Google::Rpc::Status]
        #     Contains additional information about the quota error.
        #     If available, `status.code` will be non zero.
        class QuotaError
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Error codes related to project config validations are deprecated since the
          # quota controller methods do not perform these validations. Instead services
          # have to call the Check method, without quota_properties field, to perform
          # these validations before calling the quota controller methods. These
          # methods check only for project deletion to be wipe out compliant.
          module Code
            # This is never used.
            UNSPECIFIED = 0

            # Quota allocation failed.
            # Same as [google.rpc.Code.RESOURCE_EXHAUSTED][google.rpc.Code.RESOURCE_EXHAUSTED].
            RESOURCE_EXHAUSTED = 8

            # Consumer cannot access the service because the service requires active
            # billing.
            BILLING_NOT_ACTIVE = 107

            # Consumer's project has been marked as deleted (soft deletion).
            PROJECT_DELETED = 108

            # Specified API key is invalid.
            API_KEY_INVALID = 105

            # Specified API Key has expired.
            API_KEY_EXPIRED = 112
          end
        end
      end
    end
  end
end
