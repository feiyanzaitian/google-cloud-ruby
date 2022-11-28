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
        # Defines flags that are used to run the diagnostic tool
        # @!attribute [rw] gcs_bucket
        #   @return [::String]
        #     Required. User Cloud Storage bucket location (REQUIRED)
        #     ## Must be formatted with path prefix (gs://$GCS_BUCKET)
        #
        #     Permissions:
        #     User Managed Notebooks:
        #     - storage.buckets.writer: Must be given to the project's service account
        #     attached to VM.
        #     Google Managed Notebooks:
        #     - storage.buckets.writer: Must be given to the project's service account or
        #     ## user credentials attached to VM depending on authentication mode.
        #
        #     Cloud Storage bucket Log file will be written to
        #     gs://$GCS_BUCKET/$RELATIVE_PATH/$VM_DATE_$TIME.tar.gz
        # @!attribute [rw] relative_path
        #   @return [::String]
        #     Optional. Defines the relative storage path in the Cloud Storage bucket where the
        #     diagnostic logs will be written: Default path will be the root directory of
        #     the Cloud Storage bucket (gs://$GCS_BUCKET/$DATE_$TIME.tar.gz) Example of
        #     full path where Log file will be written: gs://$GCS_BUCKET/$RELATIVE_PATH/
        # @!attribute [rw] repair_flag_enabled
        #   @return [::Boolean]
        #     Optional. Enables flag to repair service for instance
        # @!attribute [rw] packet_capture_flag_enabled
        #   @return [::Boolean]
        #     Optional. Enables flag to capture packets from the instance for 30 seconds
        # @!attribute [rw] copy_home_files_flag_enabled
        #   @return [::Boolean]
        #     Optional. Enables flag to copy all `/home/jupyter` folder contents
        class DiagnosticConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
