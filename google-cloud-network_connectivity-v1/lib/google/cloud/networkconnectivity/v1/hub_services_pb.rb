# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/networkconnectivity/v1/hub.proto for package 'Google.Cloud.NetworkConnectivity.V1'
# Original file comments:
# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/networkconnectivity/v1/hub_pb'

module Google
  module Cloud
    module NetworkConnectivity
      module V1
        module HubService
          # Network Connectivity Center is a hub-and-spoke abstraction for network
          # connectivity management in Google Cloud. It reduces operational complexity
          # through a simple, centralized connectivity management model.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.networkconnectivity.v1.HubService'

            # Lists the Network Connectivity Center hubs associated with a given project.
            rpc :ListHubs, ::Google::Cloud::NetworkConnectivity::V1::ListHubsRequest, ::Google::Cloud::NetworkConnectivity::V1::ListHubsResponse
            # Gets details about a Network Connectivity Center hub.
            rpc :GetHub, ::Google::Cloud::NetworkConnectivity::V1::GetHubRequest, ::Google::Cloud::NetworkConnectivity::V1::Hub
            # Creates a new Network Connectivity Center hub in the specified project.
            rpc :CreateHub, ::Google::Cloud::NetworkConnectivity::V1::CreateHubRequest, ::Google::Longrunning::Operation
            # Updates the description and/or labels of a Network Connectivity Center
            # hub.
            rpc :UpdateHub, ::Google::Cloud::NetworkConnectivity::V1::UpdateHubRequest, ::Google::Longrunning::Operation
            # Deletes a Network Connectivity Center hub.
            rpc :DeleteHub, ::Google::Cloud::NetworkConnectivity::V1::DeleteHubRequest, ::Google::Longrunning::Operation
            # Lists the Network Connectivity Center spokes in a specified project and
            # location.
            rpc :ListSpokes, ::Google::Cloud::NetworkConnectivity::V1::ListSpokesRequest, ::Google::Cloud::NetworkConnectivity::V1::ListSpokesResponse
            # Gets details about a Network Connectivity Center spoke.
            rpc :GetSpoke, ::Google::Cloud::NetworkConnectivity::V1::GetSpokeRequest, ::Google::Cloud::NetworkConnectivity::V1::Spoke
            # Creates a Network Connectivity Center spoke.
            rpc :CreateSpoke, ::Google::Cloud::NetworkConnectivity::V1::CreateSpokeRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a Network Connectivity Center spoke.
            rpc :UpdateSpoke, ::Google::Cloud::NetworkConnectivity::V1::UpdateSpokeRequest, ::Google::Longrunning::Operation
            # Deletes a Network Connectivity Center spoke.
            rpc :DeleteSpoke, ::Google::Cloud::NetworkConnectivity::V1::DeleteSpokeRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
