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

# [START aiplatform_v1_generated_FeaturestoreOnlineServingService_StreamingReadFeatureValues_sync]
require "google/cloud/ai_platform/v1"

##
# Example demonstrating basic usage of
# Google::Cloud::AIPlatform::V1::FeaturestoreOnlineServingService::Client#streaming_read_feature_values
#
def streaming_read_feature_values
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::AIPlatform::V1::FeaturestoreOnlineServingService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::AIPlatform::V1::StreamingReadFeatureValuesRequest.new

  # Call the streaming_read_feature_values method.
  result = client.streaming_read_feature_values request

  # The returned object is a streamed enumerable yielding elements of
  # type ::Google::Cloud::AIPlatform::V1::ReadFeatureValuesResponse.
  result.each do |response|
    p response
  end
end
# [END aiplatform_v1_generated_FeaturestoreOnlineServingService_StreamingReadFeatureValues_sync]
