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

# [START recommendationengine_v1beta1_generated_UserEventService_CollectUserEvent_sync]
require "google/cloud/recommendation_engine/v1beta1"

##
# Example demonstrating basic usage of
# Google::Cloud::RecommendationEngine::V1beta1::UserEventService::Client#collect_user_event
#
def collect_user_event
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::RecommendationEngine::V1beta1::UserEventService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::RecommendationEngine::V1beta1::CollectUserEventRequest.new

  # Call the collect_user_event method.
  result = client.collect_user_event request

  # The returned object is of type Google::Api::HttpBody.
  p result
end
# [END recommendationengine_v1beta1_generated_UserEventService_CollectUserEvent_sync]
