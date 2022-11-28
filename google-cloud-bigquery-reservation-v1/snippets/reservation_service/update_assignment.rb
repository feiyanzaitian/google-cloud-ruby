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

# [START bigqueryreservation_v1_generated_ReservationService_UpdateAssignment_sync]
require "google/cloud/bigquery/reservation/v1"

##
# Example demonstrating basic usage of
# Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client#update_assignment
#
def update_assignment
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Bigquery::Reservation::V1::ReservationService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Bigquery::Reservation::V1::UpdateAssignmentRequest.new

  # Call the update_assignment method.
  result = client.update_assignment request

  # The returned object is of type Google::Cloud::Bigquery::Reservation::V1::Assignment.
  p result
end
# [END bigqueryreservation_v1_generated_ReservationService_UpdateAssignment_sync]
