# frozen_string_literal: true

# Copyright 2021 Google LLC
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

# [START logging_v2_generated_LoggingService_ListMonitoredResourceDescriptors_sync]
require "google/cloud/logging/v2"

##
# Example demonstrating basic usage of
# Google::Cloud::Logging::V2::LoggingService::Client#list_monitored_resource_descriptors
#
def list_monitored_resource_descriptors
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Logging::V2::LoggingService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Logging::V2::ListMonitoredResourceDescriptorsRequest.new

  # Call the list_monitored_resource_descriptors method.
  result = client.list_monitored_resource_descriptors request

  # The returned object is of type Gapic::PagedEnumerable. You can
  # iterate over all elements by calling #each, and the enumerable
  # will lazily make API calls to fetch subsequent pages. Other
  # methods are also available for managing paging directly.
  result.each do |response|
    # Each element is of type ::Google::Api::MonitoredResourceDescriptor.
    p response
  end
end
# [END logging_v2_generated_LoggingService_ListMonitoredResourceDescriptors_sync]
