# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/dashboard/v1/logs_panel.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/monitoring/dashboard/v1/logs_panel.proto", :syntax => :proto3) do
    add_message "google.monitoring.dashboard.v1.LogsPanel" do
      optional :filter, :string, 1
      repeated :resource_names, :string, 2
    end
  end
end

module Google
  module Cloud
    module Monitoring
      module Dashboard
        module V1
          LogsPanel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.LogsPanel").msgclass
        end
      end
    end
  end
end
