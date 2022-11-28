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

# [START servicedirectory_v1beta1_generated_RegistrationService_UpdateService_sync]
require "google/cloud/service_directory/v1beta1"

##
# Example demonstrating basic usage of
# Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Client#update_service
#
def update_service
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::ServiceDirectory::V1beta1::UpdateServiceRequest.new

  # Call the update_service method.
  result = client.update_service request

  # The returned object is of type Google::Cloud::ServiceDirectory::V1beta1::Service.
  p result
end
# [END servicedirectory_v1beta1_generated_RegistrationService_UpdateService_sync]
