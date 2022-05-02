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
    module DataCatalog
      module V1
        # Result in the response to a search request.
        #
        # Each result captures details of one entry that matches the search.
        # @!attribute [rw] search_result_type
        #   @return [::Google::Cloud::DataCatalog::V1::SearchResultType]
        #     Type of the search result.
        #
        #     You can use this field to determine which get method to call to fetch the
        #     full resource.
        # @!attribute [rw] search_result_subtype
        #   @return [::String]
        #     Sub-type of the search result.
        #
        #     A dot-delimited full type of the resource. The same type you
        #     specify in the `type` search predicate.
        #
        #     Examples: `entry.table`, `entry.dataStream`, `tagTemplate`.
        # @!attribute [rw] relative_resource_name
        #   @return [::String]
        #     The relative name of the resource in URL format.
        #
        #     Examples:
        #
        #      * `projects/{PROJECT_ID}/locations/{LOCATION_ID}/entryGroups/{ENTRY_GROUP_ID}/entries/{ENTRY_ID}`
        #      * `projects/{PROJECT_ID}/tagTemplates/{TAG_TEMPLATE_ID}`
        # @!attribute [rw] linked_resource
        #   @return [::String]
        #     The full name of the Google Cloud resource the entry belongs to.
        #
        #     For more information, see [Full Resource Name]
        #     (/apis/design/resource_names#full_resource_name).
        #
        #     Example:
        #
        #     `//bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID`
        # @!attribute [rw] modify_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The last modification timestamp of the entry in the source system.
        # @!attribute [r] integrated_system
        #   @return [::Google::Cloud::DataCatalog::V1::IntegratedSystem]
        #     Output only. The source system that Data Catalog automatically integrates  with, such
        #     as BigQuery, Cloud Pub/Sub, or Dataproc Metastore.
        # @!attribute [rw] user_specified_system
        #   @return [::String]
        #     Custom source system that you can manually integrate Data Catalog with.
        # @!attribute [rw] fully_qualified_name
        #   @return [::String]
        #     Fully qualified name (FQN) of the resource.
        #
        #     FQNs take two forms:
        #
        #     * For non-regionalized resources:
        #
        #       `{SYSTEM}:{PROJECT}.{PATH_TO_RESOURCE_SEPARATED_WITH_DOTS}`
        #
        #     * For regionalized resources:
        #
        #       `{SYSTEM}:{PROJECT}.{LOCATION_ID}.{PATH_TO_RESOURCE_SEPARATED_WITH_DOTS}`
        #
        #     Example for a DPMS table:
        #
        #     `dataproc_metastore:PROJECT_ID.LOCATION_ID.INSTANCE_ID.DATABASE_ID.TABLE_ID`
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The display name of the result.
        # @!attribute [rw] description
        #   @return [::String]
        #     Entry description that can consist of several sentences or paragraphs that
        #     describe entry contents.
        class SearchCatalogResult
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The resource types that can be returned in search results.
        module SearchResultType
          # Default unknown type.
          SEARCH_RESULT_TYPE_UNSPECIFIED = 0

          # An {::Google::Cloud::DataCatalog::V1::Entry Entry}.
          ENTRY = 1

          # A {::Google::Cloud::DataCatalog::V1::TagTemplate TagTemplate}.
          TAG_TEMPLATE = 2

          # An {::Google::Cloud::DataCatalog::V1::EntryGroup EntryGroup}.
          ENTRY_GROUP = 3
        end
      end
    end
  end
end
