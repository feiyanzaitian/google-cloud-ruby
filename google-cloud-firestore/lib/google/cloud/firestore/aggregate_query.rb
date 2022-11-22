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

require "google/cloud/firestore/v1"
require "google/cloud/firestore/aggregate_query_snapshot"

module Google
  module Cloud
    module Firestore
      ##
      # # AggregateQuery
      #
      # An aggregate query can be used to fetch aggregate values (ex: count) for a query
      #
      # Instances of this class are immutable. All methods that refine the aggregate query
      # return new instances.
      #
      # @example
      #   require "google/cloud/firestore"
      #
      #   firestore = Google::Cloud::Firestore.new
      #
      #   query = firestore.col "cities"
      #
      #   # Create an aggregate query
      #   aggregate_query = query.aggregate_query
      #                          .add_count
      #
      #   aggregate_query.get do |aggregate_snapshot|
      #     puts aggregate_snapshot.get('count')
      #   end
      #
      # @example Alias an aggregate query
      #   require "google/cloud/firestore"
      #
      #   firestore = Google::Cloud::Firestore.new
      #
      #   # Create a query
      #   query = firestore.col "cities"
      #
      #   # Create an aggregate query
      #   aggregate_query = query.aggregate_query
      #                          .add_count aggregate_alias: 'total_cities'
      #
      #   aggregate_query.get do |aggregate_snapshot|
      #     puts aggregate_snapshot.get('total_cities')
      #   end
      #
      class AggregateQuery
        ##
        # @private The firestore client object.
        attr_accessor :client

        ##
        # @private The type for limit queries.
        attr_reader :parent_path

        ##
        # @private The Google::Cloud::Firestore::V1::StructuredQuery object.
        attr_reader :query

        ##
        # @private Creates a new AggregateQuery
        def initialize query, parent_path, client
          @query = query
          @parent_path = parent_path
          @aggregates = []
          @client = client
        end

        ##
        # Adds a count aggregate.
        #
        # @yield [snapshot] The block for accessing the aggregate query snapshots.
        # @yieldparam [AggregateQuerySnapshot] An aggregate query snapshot.
        #
        # @return [Enumerator<AggregateQuerySnapshot>] A list of aggregate query snapshots.
        #
        # @example
        #   require "google/cloud/firestore"
        #
        #   firestore = Google::Cloud::Firestore.new
        #
        #   query = firestore.col "cities"
        #
        #   # Create an aggregate query
        #   aggregate_query = query.aggregate_query
        #                          .add_count
        #
        #   aggregate_query.get do |aggregate_snapshot|
        #     puts aggregate_snapshot.get('count')
        #   end
        #
        def add_count aggregate_alias: nil
          aggregate_alias ||= ALIASES[:count]
          @aggregates << StructuredAggregationQuery::Aggregation.new(
            count: StructuredAggregationQuery::Aggregation::Count.new,
            alias: aggregate_alias
          )
          self
        end

        ##
        # Retrieves document snapshots for the query.
        #
        # @yield [snapshot] The block for accessing the aggregate query snapshots.
        # @yieldparam [AggregateQuerySnapshot] An aggregate query snapshot.
        #
        # @return [Enumerator<AggregateQuerySnapshot>] A list of aggregate query snapshots.
        #
        # @example
        #   require "google/cloud/firestore"
        #
        #   firestore = Google::Cloud::Firestore.new
        #
        #   query = firestore.col "cities"
        #
        #   # Create an aggregate query
        #   aggregate_query = query.aggregate_query
        #                          .add_count
        #
        #   aggregate_query.get do |aggregate_snapshot|
        #     puts aggregate_snapshot.get('count')
        #   end
        #
        def get
          # ensure_service!

          return enum_for :get unless block_given?

          results = service.run_aggregate_query @parent_path, structured_aggregation_query
          results.each do |result|
            next if result.result.nil?
            yield AggregateQuerySnapshot.from_run_aggregate_query_response result
          end
        end

        ##
        # @private Creates a Google::Cloud::Firestore::V1::StructuredAggregationQuery object
        def structured_aggregation_query
          StructuredAggregationQuery.new(
            structured_query: @query,
            aggregations: @aggregates
          )
        end

        protected

        ##
        # @private
        StructuredAggregationQuery = Google::Cloud::Firestore::V1::StructuredAggregationQuery

        ##
        # @private
        ALIASES = {
          count: "count"
        }.freeze

        ##
        # @private Raise an error unless a database is available.
        def ensure_client!
          raise "Must have active connection to service" unless client
        end

        ##
        # @private The Service object.
        def service
          ensure_client!
          client.service
        end
      end
    end
  end
end
