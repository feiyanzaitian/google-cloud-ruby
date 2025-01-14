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

# [START apikeys_v2_generated_ApiKeys_ListKeys_sync]
require "google/cloud/api_keys/v2"

##
# Example demonstrating basic usage of
# Google::Cloud::ApiKeys::V2::ApiKeys::Client#list_keys
#
def list_keys
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::ApiKeys::V2::ApiKeys::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::ApiKeys::V2::ListKeysRequest.new

  # Call the list_keys method.
  result = client.list_keys request

  # The returned object is of type Gapic::PagedEnumerable. You can
  # iterate over all elements by calling #each, and the enumerable
  # will lazily make API calls to fetch subsequent pages. Other
  # methods are also available for managing paging directly.
  result.each do |response|
    # Each element is of type ::Google::Cloud::ApiKeys::V2::Key.
    p response
  end
end
# [END apikeys_v2_generated_ApiKeys_ListKeys_sync]
