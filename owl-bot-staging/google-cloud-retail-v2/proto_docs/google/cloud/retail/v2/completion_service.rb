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
    module Retail
      module V2
        # Auto-complete parameters.
        # @!attribute [rw] catalog
        #   @return [::String]
        #     Required. Catalog for which the completion is performed.
        #
        #     Full resource name of catalog, such as
        #     `projects/*/locations/global/catalogs/default_catalog`.
        # @!attribute [rw] query
        #   @return [::String]
        #     Required. The query used to generate suggestions.
        #
        #     The maximum number of allowed characters is 255.
        # @!attribute [rw] visitor_id
        #   @return [::String]
        #     Required field. A unique identifier for tracking visitors. For example,
        #     this could be implemented with an HTTP cookie, which should be able to
        #     uniquely identify a visitor on a single device. This unique identifier
        #     should not change if the visitor logs in or out of the website.
        #
        #     The field must be a UTF-8 encoded string with a length limit of 128
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # @!attribute [rw] language_codes
        #   @return [::Array<::String>]
        #     The language filters applied to the output suggestions. If set, it should
        #     contain the language of the query. If not set, suggestions are returned
        #     without considering language restrictions. This is the BCP-47 language
        #     code, such as "en-US" or "sr-Latn". For more information, see [Tags for
        #     Identifying Languages](https://tools.ietf.org/html/bcp47). The maximum
        #     number of language codes is 3.
        # @!attribute [rw] device_type
        #   @return [::String]
        #     The device type context for completion suggestions.
        #     It is useful to apply different suggestions on different device types, e.g.
        #     `DESKTOP`, `MOBILE`. If it is empty, the suggestions are across all device
        #     types.
        #
        #     Supported formats:
        #
        #     * `UNKNOWN_DEVICE_TYPE`
        #
        #     * `DESKTOP`
        #
        #     * `MOBILE`
        #
        #     * A customized string starts with `OTHER_`, e.g. `OTHER_IPHONE`.
        # @!attribute [rw] dataset
        #   @return [::String]
        #     Determines which dataset to use for fetching completion. "user-data" will
        #     use the imported dataset through
        #     {::Google::Cloud::Retail::V2::CompletionService::Client#import_completion_data CompletionService.ImportCompletionData}.
        #     "cloud-retail" will use the dataset generated by cloud retail based on user
        #     events. If leave empty, it will use the "user-data".
        #
        #     Current supported values:
        #
        #     * user-data
        #
        #     * cloud-retail
        #       This option requires additional allowlisting. Before using cloud-retail,
        #       contact Cloud Retail support team first.
        # @!attribute [rw] max_suggestions
        #   @return [::Integer]
        #     Completion max suggestions. If left unset or set to 0, then will fallback
        #     to the configured value [CompletionConfig.max_suggestions][].
        #
        #     The maximum allowed max suggestions is 20. If it is set higher, it will be
        #     capped by 20.
        class CompleteQueryRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response of the auto-complete query.
        # @!attribute [rw] completion_results
        #   @return [::Array<::Google::Cloud::Retail::V2::CompleteQueryResponse::CompletionResult>]
        #     Results of the matching suggestions. The result list is ordered and the
        #     first result is top suggestion.
        # @!attribute [rw] attribution_token
        #   @return [::String]
        #     A unique complete token. This should be included in the
        #     {::Google::Cloud::Retail::V2::UserEvent#completion_detail UserEvent.completion_detail}
        #     for search events resulting from this completion, which enables accurate
        #     attribution of complete model performance.
        # @!attribute [rw] recent_search_results
        #   @return [::Array<::Google::Cloud::Retail::V2::CompleteQueryResponse::RecentSearchResult>]
        #     Matched recent searches of this user. The maximum number of recent searches
        #     is 10. This field is a restricted feature. Contact Retail Search support
        #     team if you are interested in enabling it.
        #
        #     This feature is only available when
        #     {::Google::Cloud::Retail::V2::CompleteQueryRequest#visitor_id CompleteQueryRequest.visitor_id}
        #     field is set and {::Google::Cloud::Retail::V2::UserEvent UserEvent} is imported.
        #     The recent searches satisfy the follow rules:
        #      * They are ordered from latest to oldest.
        #      * They are matched with
        #      {::Google::Cloud::Retail::V2::CompleteQueryRequest#query CompleteQueryRequest.query}
        #      case insensitively.
        #      * They are transformed to lower cases.
        #      * They are UTF-8 safe.
        #
        #     Recent searches are deduplicated. More recent searches will be reserved
        #     when duplication happens.
        class CompleteQueryResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Resource that represents completion results.
          # @!attribute [rw] suggestion
          #   @return [::String]
          #     The suggestion for the query.
          # @!attribute [rw] attributes
          #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::Retail::V2::CustomAttribute}]
          #     Custom attributes for the suggestion term.
          #     * For "user-data", the attributes are additional custom attributes
          #     ingested through BigQuery.
          #     * For "cloud-retail", the attributes are product attributes generated
          #     by Cloud Retail.
          class CompletionResult
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::Google::Cloud::Retail::V2::CustomAttribute]
            class AttributesEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Recent search of this user.
          # @!attribute [rw] recent_search
          #   @return [::String]
          #     The recent search query.
          class RecentSearchResult
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
