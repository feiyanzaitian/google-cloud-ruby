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


module Google
  module Cloud
    module Notebooks
      module V1
        # Request for listing Managed Notebook Runtimes.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Format:
        #     `parent=projects/{project_id}/locations/{location}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum return size of the list call.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A previous returned page token that can be used to continue listing
        #     from the last result.
        class ListRuntimesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for listing Managed Notebook Runtimes.
        # @!attribute [rw] runtimes
        #   @return [::Array<::Google::Cloud::Notebooks::V1::Runtime>]
        #     A list of returned Runtimes.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Page token that can be used to continue listing from the last result in the
        #     next list call.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached. For example,
        #     ['us-west1', 'us-central1'].
        #     A ListRuntimesResponse will only contain either runtimes or unreachables,
        class ListRuntimesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for getting a Managed Notebook Runtime.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
        class GetRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for creating a Managed Notebook Runtime.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Format:
        #     `parent=projects/{project_id}/locations/{location}`
        # @!attribute [rw] runtime_id
        #   @return [::String]
        #     Required. User-defined unique ID of this Runtime.
        # @!attribute [rw] runtime
        #   @return [::Google::Cloud::Notebooks::V1::Runtime]
        #     Required. The Runtime to be created.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Idempotent request UUID.
        class CreateRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for deleting a Managed Notebook Runtime.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Idempotent request UUID.
        class DeleteRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for starting a Managed Notebook Runtime.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Idempotent request UUID.
        class StartRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for stopping a Managed Notebook Runtime.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Idempotent request UUID.
        class StopRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for switching a Managed Notebook Runtime.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
        # @!attribute [rw] machine_type
        #   @return [::String]
        #     machine type.
        # @!attribute [rw] accelerator_config
        #   @return [::Google::Cloud::Notebooks::V1::RuntimeAcceleratorConfig]
        #     accelerator config.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Idempotent request UUID.
        class SwitchRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for resetting a Managed Notebook Runtime.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Idempotent request UUID.
        class ResetRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for upgrading a Managed Notebook Runtime to the latest version.
        # option (google.api.message_visibility).restriction =
        #     "TRUSTED_TESTER,SPECIAL_TESTER";
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Idempotent request UUID.
        class UpgradeRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for reporting a Managed Notebook Event.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
        # @!attribute [rw] vm_id
        #   @return [::String]
        #     Required. The VM hardware token for authenticating the VM.
        #     https://cloud.google.com/compute/docs/instances/verifying-instance-identity
        # @!attribute [rw] event
        #   @return [::Google::Cloud::Notebooks::V1::Event]
        #     Required. The Event to be reported.
        class ReportRuntimeEventRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for updating a Managed Notebook configuration.
        # @!attribute [rw] runtime
        #   @return [::Google::Cloud::Notebooks::V1::Runtime]
        #     Required. The Runtime to be updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Specifies the path, relative to `Runtime`, of
        #     the field to update. For example, to change the software configuration
        #     kernels, the `update_mask` parameter would be
        #     specified as `software_config.kernels`,
        #     and the `PATCH` request body would specify the new value, as follows:
        #
        #         {
        #           "software_config":{
        #             "kernels": [{
        #                'repository':
        #                'gcr.io/deeplearning-platform-release/pytorch-gpu', 'tag':
        #                'latest' }],
        #             }
        #         }
        #
        #
        #     Currently, only the following fields can be updated:
        #     - software_config.kernels
        #     - software_config.post_startup_script
        #     - software_config.custom_gpu_driver_path
        #     - software_config.idle_shutdown
        #     - software_config.idle_shutdown_timeout
        #     - software_config.disable_terminal
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Idempotent request UUID.
        class UpdateRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for getting a new access token.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
        # @!attribute [rw] vm_id
        #   @return [::String]
        #     Required. The VM hardware token for authenticating the VM.
        #     https://cloud.google.com/compute/docs/instances/verifying-instance-identity
        class RefreshRuntimeTokenInternalRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response with a new access token.
        # @!attribute [rw] access_token
        #   @return [::String]
        #     The OAuth 2.0 access token.
        # @!attribute [r] expire_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Token expiration time.
        class RefreshRuntimeTokenInternalResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for creating a notebook instance diagnostic file.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/runtimes/{runtimes_id}`
        # @!attribute [rw] diagnostic_config
        #   @return [::Google::Cloud::Notebooks::V1::DiagnosticConfig]
        #     Required. Defines flags that are used to run the diagnostic tool
        class DiagnoseRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
