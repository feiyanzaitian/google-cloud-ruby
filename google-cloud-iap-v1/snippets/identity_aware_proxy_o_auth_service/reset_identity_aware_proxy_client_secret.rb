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

# [START iap_v1_generated_IdentityAwareProxyOAuthService_ResetIdentityAwareProxyClientSecret_sync]
require "google/cloud/iap/v1"

##
# Example demonstrating basic usage of
# Google::Cloud::Iap::V1::IdentityAwareProxyOAuthService::Client#reset_identity_aware_proxy_client_secret
#
def reset_identity_aware_proxy_client_secret
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Iap::V1::IdentityAwareProxyOAuthService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Iap::V1::ResetIdentityAwareProxyClientSecretRequest.new

  # Call the reset_identity_aware_proxy_client_secret method.
  result = client.reset_identity_aware_proxy_client_secret request

  # The returned object is of type Google::Cloud::Iap::V1::IdentityAwareProxyClient.
  p result
end
# [END iap_v1_generated_IdentityAwareProxyOAuthService_ResetIdentityAwareProxyClientSecret_sync]
