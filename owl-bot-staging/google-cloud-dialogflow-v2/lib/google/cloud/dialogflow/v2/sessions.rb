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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/dialogflow/v2/version"

require "google/cloud/dialogflow/v2/sessions/credentials"
require "google/cloud/dialogflow/v2/sessions/paths"
require "google/cloud/dialogflow/v2/sessions/client"

module Google
  module Cloud
    module Dialogflow
      module V2
        ##
        # A service used for session interactions.
        #
        # For more information, see the [API interactions
        # guide](https://cloud.google.com/dialogflow/docs/api-overview).
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/dialogflow/v2/sessions"
        #     client = ::Google::Cloud::Dialogflow::V2::Sessions::Client.new
        #
        module Sessions
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "sessions", "helpers.rb"
require "google/cloud/dialogflow/v2/sessions/helpers" if ::File.file? helper_path
