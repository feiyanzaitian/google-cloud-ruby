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

# [START compute_v1_generated_InstanceGroupManagers_DeleteInstances_sync]
require "google/cloud/compute/v1"

# Create a client object. The client can be reused for multiple calls.
client = Google::Cloud::Compute::V1::InstanceGroupManagers::Client.new

# Create a request. To set request fields, pass in keyword arguments.
request = Google::Cloud::Compute::V1::DeleteInstancesInstanceGroupManagerRequest.new

# Call the delete_instances method.
result = client.delete_instances request

# The returned object is of type Google::Cloud::Compute::V1::Operation.
p result
# [END compute_v1_generated_InstanceGroupManagers_DeleteInstances_sync]
