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

# [START beyondcorp_v1_generated_AppConnectorsService_GetAppConnector_sync]
require "google/cloud/beyond_corp/app_connectors/v1"

##
# Example demonstrating basic usage of
# Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnectorsService::Client#get_app_connector
#
def get_app_connector
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnectorsService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::BeyondCorp::AppConnectors::V1::GetAppConnectorRequest.new

  # Call the get_app_connector method.
  result = client.get_app_connector request

  # The returned object is of type Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnector.
  p result
end
# [END beyondcorp_v1_generated_AppConnectorsService_GetAppConnector_sync]
