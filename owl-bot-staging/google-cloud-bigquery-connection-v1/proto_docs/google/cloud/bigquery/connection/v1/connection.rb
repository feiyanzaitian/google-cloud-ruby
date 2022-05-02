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
    module Bigquery
      module Connection
        module V1
          # The request for {::Google::Cloud::Bigquery::Connection::V1::ConnectionService::Client#create_connection ConnectionService.CreateConnection}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. Parent resource name.
          #     Must be in the format `projects/{project_id}/locations/{location_id}`
          # @!attribute [rw] connection_id
          #   @return [::String]
          #     Optional. Connection id that should be assigned to the created connection.
          # @!attribute [rw] connection
          #   @return [::Google::Cloud::Bigquery::Connection::V1::Connection]
          #     Required. Connection to create.
          class CreateConnectionRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for {::Google::Cloud::Bigquery::Connection::V1::ConnectionService::Client#get_connection ConnectionService.GetConnection}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Name of the requested connection, for example:
          #     `projects/{project_id}/locations/{location_id}/connections/{connection_id}`
          class GetConnectionRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for {::Google::Cloud::Bigquery::Connection::V1::ConnectionService::Client#list_connections ConnectionService.ListConnections}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. Parent resource name.
          #     Must be in the form: `projects/{project_id}/locations/{location_id}`
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     Required. Page size.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     Page token.
          class ListConnectionsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response for {::Google::Cloud::Bigquery::Connection::V1::ConnectionService::Client#list_connections ConnectionService.ListConnections}.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     Next page token.
          # @!attribute [rw] connections
          #   @return [::Array<::Google::Cloud::Bigquery::Connection::V1::Connection>]
          #     List of connections.
          class ListConnectionsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for {::Google::Cloud::Bigquery::Connection::V1::ConnectionService::Client#update_connection ConnectionService.UpdateConnection}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Name of the connection to update, for example:
          #     `projects/{project_id}/locations/{location_id}/connections/{connection_id}`
          # @!attribute [rw] connection
          #   @return [::Google::Cloud::Bigquery::Connection::V1::Connection]
          #     Required. Connection containing the updated fields.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Required. Update mask for the connection fields to be updated.
          class UpdateConnectionRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request for [ConnectionService.DeleteConnectionRequest][].
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Name of the deleted connection, for example:
          #     `projects/{project_id}/locations/{location_id}/connections/{connection_id}`
          class DeleteConnectionRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Configuration parameters to establish connection with an external data
          # source, except the credential attributes.
          # @!attribute [rw] name
          #   @return [::String]
          #     The resource name of the connection in the form of:
          #     `projects/{project_id}/locations/{location_id}/connections/{connection_id}`
          # @!attribute [rw] friendly_name
          #   @return [::String]
          #     User provided display name for the connection.
          # @!attribute [rw] description
          #   @return [::String]
          #     User provided description.
          # @!attribute [rw] cloud_sql
          #   @return [::Google::Cloud::Bigquery::Connection::V1::CloudSqlProperties]
          #     Cloud SQL properties.
          # @!attribute [rw] aws
          #   @return [::Google::Cloud::Bigquery::Connection::V1::AwsProperties]
          #     Amazon Web Services (AWS) properties.
          # @!attribute [rw] cloud_spanner
          #   @return [::Google::Cloud::Bigquery::Connection::V1::CloudSpannerProperties]
          #     Cloud Spanner properties.
          # @!attribute [rw] cloud_resource
          #   @return [::Google::Cloud::Bigquery::Connection::V1::CloudResourceProperties]
          #     Cloud Resource properties.
          # @!attribute [r] creation_time
          #   @return [::Integer]
          #     Output only. The creation timestamp of the connection.
          # @!attribute [r] last_modified_time
          #   @return [::Integer]
          #     Output only. The last update timestamp of the connection.
          # @!attribute [r] has_credential
          #   @return [::Boolean]
          #     Output only. True, if credential is configured for this connection.
          class Connection
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Connection properties specific to the Cloud SQL.
          # @!attribute [rw] instance_id
          #   @return [::String]
          #     Cloud SQL instance ID in the form `project:location:instance`.
          # @!attribute [rw] database
          #   @return [::String]
          #     Database name.
          # @!attribute [rw] type
          #   @return [::Google::Cloud::Bigquery::Connection::V1::CloudSqlProperties::DatabaseType]
          #     Type of the Cloud SQL database.
          # @!attribute [rw] credential
          #   @return [::Google::Cloud::Bigquery::Connection::V1::CloudSqlCredential]
          #     Input only. Cloud SQL credential.
          class CloudSqlProperties
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Supported Cloud SQL database types.
            module DatabaseType
              # Unspecified database type.
              DATABASE_TYPE_UNSPECIFIED = 0

              # Cloud SQL for PostgreSQL.
              POSTGRES = 1

              # Cloud SQL for MySQL.
              MYSQL = 2
            end
          end

          # Credential info for the Cloud SQL.
          # @!attribute [rw] username
          #   @return [::String]
          #     The username for the credential.
          # @!attribute [rw] password
          #   @return [::String]
          #     The password for the credential.
          class CloudSqlCredential
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Connection properties specific to Cloud Spanner.
          # @!attribute [rw] database
          #   @return [::String]
          #     Cloud Spanner database in the form `project/instance/database'
          # @!attribute [rw] use_parallelism
          #   @return [::Boolean]
          #     If parallelism should be used when reading from Cloud Spanner
          class CloudSpannerProperties
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Connection properties specific to Amazon Web Services (AWS).
          # @!attribute [rw] cross_account_role
          #   @return [::Google::Cloud::Bigquery::Connection::V1::AwsCrossAccountRole]
          #     Authentication using Google owned AWS IAM user's access key to assume
          #     into customer's AWS IAM Role.
          # @!attribute [rw] access_role
          #   @return [::Google::Cloud::Bigquery::Connection::V1::AwsAccessRole]
          #     Authentication using Google owned service account to assume into
          #     customer's AWS IAM Role.
          class AwsProperties
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Authentication method for Amazon Web Services (AWS) that uses Google owned
          # AWS IAM user's access key to assume into customer's AWS IAM Role.
          # @!attribute [rw] iam_role_id
          #   @return [::String]
          #     The user’s AWS IAM Role that trusts the Google-owned AWS IAM user
          #     Connection.
          # @!attribute [r] iam_user_id
          #   @return [::String]
          #     Output only. Google-owned AWS IAM User for a Connection.
          # @!attribute [r] external_id
          #   @return [::String]
          #     Output only. A Google-generated id for representing Connection’s identity in AWS.
          #     External Id is also used for preventing the Confused Deputy Problem. See
          #     https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user_externalid.html
          class AwsCrossAccountRole
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Authentication method for Amazon Web Services (AWS) that uses Google owned
          # Google service account to assume into customer's AWS IAM Role.
          # @!attribute [rw] iam_role_id
          #   @return [::String]
          #     The user’s AWS IAM Role that trusts the Google-owned AWS IAM user
          #     Connection.
          # @!attribute [rw] identity
          #   @return [::String]
          #     A unique Google-owned and Google-generated identity for the Connection.
          #     This identity will be used to access the user's AWS IAM Role.
          class AwsAccessRole
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Container for connection properties for delegation of access to GCP
          # resources.
          # @!attribute [r] service_account_id
          #   @return [::String]
          #     Output only. The account ID of the service created for the purpose of this connection.
          #
          #     The service account does not have any permissions associated with it
          #     when it is created. After creation, customers delegate permissions
          #     to the service account. When the connection is used in the context of an
          #     operation in BigQuery, the service account will be used to connect to the
          #     desired resources in GCP.
          #
          #     The account ID is in the form of:
          #       <service-1234>@gcp-sa-bigquery-cloudresource.iam.gserviceaccount.com
          class CloudResourceProperties
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
