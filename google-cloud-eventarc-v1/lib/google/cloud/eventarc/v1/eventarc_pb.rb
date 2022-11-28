# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/eventarc/v1/eventarc.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/eventarc/v1/channel_pb'
require 'google/cloud/eventarc/v1/channel_connection_pb'
require 'google/cloud/eventarc/v1/discovery_pb'
require 'google/cloud/eventarc/v1/google_channel_config_pb'
require 'google/cloud/eventarc/v1/trigger_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/eventarc/v1/eventarc.proto", :syntax => :proto3) do
    add_message "google.cloud.eventarc.v1.GetTriggerRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.eventarc.v1.ListTriggersRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :order_by, :string, 4
      optional :filter, :string, 5
    end
    add_message "google.cloud.eventarc.v1.ListTriggersResponse" do
      repeated :triggers, :message, 1, "google.cloud.eventarc.v1.Trigger"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.eventarc.v1.CreateTriggerRequest" do
      optional :parent, :string, 1
      optional :trigger, :message, 2, "google.cloud.eventarc.v1.Trigger"
      optional :trigger_id, :string, 3
      optional :validate_only, :bool, 4
    end
    add_message "google.cloud.eventarc.v1.UpdateTriggerRequest" do
      optional :trigger, :message, 1, "google.cloud.eventarc.v1.Trigger"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
      optional :allow_missing, :bool, 3
      optional :validate_only, :bool, 4
    end
    add_message "google.cloud.eventarc.v1.DeleteTriggerRequest" do
      optional :name, :string, 1
      optional :etag, :string, 2
      optional :allow_missing, :bool, 3
      optional :validate_only, :bool, 4
    end
    add_message "google.cloud.eventarc.v1.GetChannelRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.eventarc.v1.ListChannelsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :order_by, :string, 4
    end
    add_message "google.cloud.eventarc.v1.ListChannelsResponse" do
      repeated :channels, :message, 1, "google.cloud.eventarc.v1.Channel"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.eventarc.v1.CreateChannelRequest" do
      optional :parent, :string, 1
      optional :channel, :message, 2, "google.cloud.eventarc.v1.Channel"
      optional :channel_id, :string, 3
      optional :validate_only, :bool, 4
    end
    add_message "google.cloud.eventarc.v1.UpdateChannelRequest" do
      optional :channel, :message, 1, "google.cloud.eventarc.v1.Channel"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
      optional :validate_only, :bool, 3
    end
    add_message "google.cloud.eventarc.v1.DeleteChannelRequest" do
      optional :name, :string, 1
      optional :validate_only, :bool, 2
    end
    add_message "google.cloud.eventarc.v1.GetProviderRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.eventarc.v1.ListProvidersRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :order_by, :string, 4
      optional :filter, :string, 5
    end
    add_message "google.cloud.eventarc.v1.ListProvidersResponse" do
      repeated :providers, :message, 1, "google.cloud.eventarc.v1.Provider"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.eventarc.v1.GetChannelConnectionRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.eventarc.v1.ListChannelConnectionsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.eventarc.v1.ListChannelConnectionsResponse" do
      repeated :channel_connections, :message, 1, "google.cloud.eventarc.v1.ChannelConnection"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.eventarc.v1.CreateChannelConnectionRequest" do
      optional :parent, :string, 1
      optional :channel_connection, :message, 2, "google.cloud.eventarc.v1.ChannelConnection"
      optional :channel_connection_id, :string, 3
    end
    add_message "google.cloud.eventarc.v1.DeleteChannelConnectionRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.eventarc.v1.UpdateGoogleChannelConfigRequest" do
      optional :google_channel_config, :message, 1, "google.cloud.eventarc.v1.GoogleChannelConfig"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.eventarc.v1.GetGoogleChannelConfigRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.eventarc.v1.OperationMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :target, :string, 3
      optional :verb, :string, 4
      optional :status_message, :string, 5
      optional :requested_cancellation, :bool, 6
      optional :api_version, :string, 7
    end
  end
end

module Google
  module Cloud
    module Eventarc
      module V1
        GetTriggerRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.GetTriggerRequest").msgclass
        ListTriggersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.ListTriggersRequest").msgclass
        ListTriggersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.ListTriggersResponse").msgclass
        CreateTriggerRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.CreateTriggerRequest").msgclass
        UpdateTriggerRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.UpdateTriggerRequest").msgclass
        DeleteTriggerRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.DeleteTriggerRequest").msgclass
        GetChannelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.GetChannelRequest").msgclass
        ListChannelsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.ListChannelsRequest").msgclass
        ListChannelsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.ListChannelsResponse").msgclass
        CreateChannelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.CreateChannelRequest").msgclass
        UpdateChannelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.UpdateChannelRequest").msgclass
        DeleteChannelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.DeleteChannelRequest").msgclass
        GetProviderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.GetProviderRequest").msgclass
        ListProvidersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.ListProvidersRequest").msgclass
        ListProvidersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.ListProvidersResponse").msgclass
        GetChannelConnectionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.GetChannelConnectionRequest").msgclass
        ListChannelConnectionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.ListChannelConnectionsRequest").msgclass
        ListChannelConnectionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.ListChannelConnectionsResponse").msgclass
        CreateChannelConnectionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.CreateChannelConnectionRequest").msgclass
        DeleteChannelConnectionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.DeleteChannelConnectionRequest").msgclass
        UpdateGoogleChannelConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.UpdateGoogleChannelConfigRequest").msgclass
        GetGoogleChannelConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.GetGoogleChannelConfigRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.OperationMetadata").msgclass
      end
    end
  end
end
