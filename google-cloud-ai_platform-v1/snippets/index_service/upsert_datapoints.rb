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

# [START aiplatform_v1_generated_IndexService_UpsertDatapoints_sync]
require "google/cloud/ai_platform/v1"

##
# Example demonstrating basic usage of
# Google::Cloud::AIPlatform::V1::IndexService::Client#upsert_datapoints
#
def upsert_datapoints
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::AIPlatform::V1::IndexService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::AIPlatform::V1::UpsertDatapointsRequest.new

  # Call the upsert_datapoints method.
  result = client.upsert_datapoints request

  # The returned object is of type Google::Cloud::AIPlatform::V1::UpsertDatapointsResponse.
  p result
end
# [END aiplatform_v1_generated_IndexService_UpsertDatapoints_sync]
