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
    module AIPlatform
      module V1
        module Schema
          module Predict
            module Instance
              # Prediction input format for Text Extraction.
              # @!attribute [rw] content
              #   @return [::String]
              #     The text snippet to make the predictions on.
              # @!attribute [rw] mime_type
              #   @return [::String]
              #     The MIME type of the text snippet. The supported MIME types are listed
              #     below.
              #     - text/plain
              # @!attribute [rw] key
              #   @return [::String]
              #     This field is only used for batch prediction. If a key is provided, the
              #     batch prediction result will by mapped to this key. If omitted, then the
              #     batch prediction result will contain the entire input instance. Vertex AI
              #     will not check if keys in the request are duplicates, so it is up to the
              #     caller to ensure the keys are unique.
              class TextExtractionPredictionInstance
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end
          end
        end
      end
    end
  end
end
