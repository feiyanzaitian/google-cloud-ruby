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

# [START oslogin_v1beta_generated_OsLoginService_GetLoginProfile_sync]
require "google/cloud/os_login/v1beta"

##
# Example demonstrating basic usage of
# Google::Cloud::OsLogin::V1beta::OsLoginService::Client#get_login_profile
#
def get_login_profile
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::OsLogin::V1beta::OsLoginService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::OsLogin::V1beta::GetLoginProfileRequest.new

  # Call the get_login_profile method.
  result = client.get_login_profile request

  # The returned object is of type Google::Cloud::OsLogin::V1beta::LoginProfile.
  p result
end
# [END oslogin_v1beta_generated_OsLoginService_GetLoginProfile_sync]
