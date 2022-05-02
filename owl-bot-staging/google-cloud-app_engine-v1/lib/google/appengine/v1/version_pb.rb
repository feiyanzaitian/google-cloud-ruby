# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/appengine/v1/version.proto

require 'google/protobuf'

require 'google/appengine/v1/app_yaml_pb'
require 'google/appengine/v1/deploy_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/appengine/v1/version.proto", :syntax => :proto3) do
    add_message "google.appengine.v1.Version" do
      optional :name, :string, 1
      optional :id, :string, 2
      repeated :inbound_services, :enum, 6, "google.appengine.v1.InboundServiceType"
      optional :instance_class, :string, 7
      optional :network, :message, 8, "google.appengine.v1.Network"
      repeated :zones, :string, 118
      optional :resources, :message, 9, "google.appengine.v1.Resources"
      optional :runtime, :string, 10
      optional :runtime_channel, :string, 117
      optional :threadsafe, :bool, 11
      optional :vm, :bool, 12
      map :beta_settings, :string, :string, 13
      optional :env, :string, 14
      optional :serving_status, :enum, 15, "google.appengine.v1.ServingStatus"
      optional :created_by, :string, 16
      optional :create_time, :message, 17, "google.protobuf.Timestamp"
      optional :disk_usage_bytes, :int64, 18
      optional :runtime_api_version, :string, 21
      optional :runtime_main_executable_path, :string, 22
      optional :service_account, :string, 127
      repeated :handlers, :message, 100, "google.appengine.v1.UrlMap"
      repeated :error_handlers, :message, 101, "google.appengine.v1.ErrorHandler"
      repeated :libraries, :message, 102, "google.appengine.v1.Library"
      optional :api_config, :message, 103, "google.appengine.v1.ApiConfigHandler"
      map :env_variables, :string, :string, 104
      map :build_env_variables, :string, :string, 125
      optional :default_expiration, :message, 105, "google.protobuf.Duration"
      optional :health_check, :message, 106, "google.appengine.v1.HealthCheck"
      optional :readiness_check, :message, 112, "google.appengine.v1.ReadinessCheck"
      optional :liveness_check, :message, 113, "google.appengine.v1.LivenessCheck"
      optional :nobuild_files_regex, :string, 107
      optional :deployment, :message, 108, "google.appengine.v1.Deployment"
      optional :version_url, :string, 109
      optional :endpoints_api_service, :message, 110, "google.appengine.v1.EndpointsApiService"
      optional :entrypoint, :message, 122, "google.appengine.v1.Entrypoint"
      optional :vpc_access_connector, :message, 121, "google.appengine.v1.VpcAccessConnector"
      oneof :scaling do
        optional :automatic_scaling, :message, 3, "google.appengine.v1.AutomaticScaling"
        optional :basic_scaling, :message, 4, "google.appengine.v1.BasicScaling"
        optional :manual_scaling, :message, 5, "google.appengine.v1.ManualScaling"
      end
    end
    add_message "google.appengine.v1.EndpointsApiService" do
      optional :name, :string, 1
      optional :config_id, :string, 2
      optional :rollout_strategy, :enum, 3, "google.appengine.v1.EndpointsApiService.RolloutStrategy"
      optional :disable_trace_sampling, :bool, 4
    end
    add_enum "google.appengine.v1.EndpointsApiService.RolloutStrategy" do
      value :UNSPECIFIED_ROLLOUT_STRATEGY, 0
      value :FIXED, 1
      value :MANAGED, 2
    end
    add_message "google.appengine.v1.AutomaticScaling" do
      optional :cool_down_period, :message, 1, "google.protobuf.Duration"
      optional :cpu_utilization, :message, 2, "google.appengine.v1.CpuUtilization"
      optional :max_concurrent_requests, :int32, 3
      optional :max_idle_instances, :int32, 4
      optional :max_total_instances, :int32, 5
      optional :max_pending_latency, :message, 6, "google.protobuf.Duration"
      optional :min_idle_instances, :int32, 7
      optional :min_total_instances, :int32, 8
      optional :min_pending_latency, :message, 9, "google.protobuf.Duration"
      optional :request_utilization, :message, 10, "google.appengine.v1.RequestUtilization"
      optional :disk_utilization, :message, 11, "google.appengine.v1.DiskUtilization"
      optional :network_utilization, :message, 12, "google.appengine.v1.NetworkUtilization"
      optional :standard_scheduler_settings, :message, 20, "google.appengine.v1.StandardSchedulerSettings"
    end
    add_message "google.appengine.v1.BasicScaling" do
      optional :idle_timeout, :message, 1, "google.protobuf.Duration"
      optional :max_instances, :int32, 2
    end
    add_message "google.appengine.v1.ManualScaling" do
      optional :instances, :int32, 1
    end
    add_message "google.appengine.v1.CpuUtilization" do
      optional :aggregation_window_length, :message, 1, "google.protobuf.Duration"
      optional :target_utilization, :double, 2
    end
    add_message "google.appengine.v1.RequestUtilization" do
      optional :target_request_count_per_second, :int32, 1
      optional :target_concurrent_requests, :int32, 2
    end
    add_message "google.appengine.v1.DiskUtilization" do
      optional :target_write_bytes_per_second, :int32, 14
      optional :target_write_ops_per_second, :int32, 15
      optional :target_read_bytes_per_second, :int32, 16
      optional :target_read_ops_per_second, :int32, 17
    end
    add_message "google.appengine.v1.NetworkUtilization" do
      optional :target_sent_bytes_per_second, :int32, 1
      optional :target_sent_packets_per_second, :int32, 11
      optional :target_received_bytes_per_second, :int32, 12
      optional :target_received_packets_per_second, :int32, 13
    end
    add_message "google.appengine.v1.StandardSchedulerSettings" do
      optional :target_cpu_utilization, :double, 1
      optional :target_throughput_utilization, :double, 2
      optional :min_instances, :int32, 3
      optional :max_instances, :int32, 4
    end
    add_message "google.appengine.v1.Network" do
      repeated :forwarded_ports, :string, 1
      optional :instance_tag, :string, 2
      optional :name, :string, 3
      optional :subnetwork_name, :string, 4
      optional :session_affinity, :bool, 5
    end
    add_message "google.appengine.v1.Volume" do
      optional :name, :string, 1
      optional :volume_type, :string, 2
      optional :size_gb, :double, 3
    end
    add_message "google.appengine.v1.Resources" do
      optional :cpu, :double, 1
      optional :disk_gb, :double, 2
      optional :memory_gb, :double, 3
      repeated :volumes, :message, 4, "google.appengine.v1.Volume"
      optional :kms_key_reference, :string, 5
    end
    add_message "google.appengine.v1.VpcAccessConnector" do
      optional :name, :string, 1
    end
    add_message "google.appengine.v1.Entrypoint" do
      oneof :command do
        optional :shell, :string, 1
      end
    end
    add_enum "google.appengine.v1.InboundServiceType" do
      value :INBOUND_SERVICE_UNSPECIFIED, 0
      value :INBOUND_SERVICE_MAIL, 1
      value :INBOUND_SERVICE_MAIL_BOUNCE, 2
      value :INBOUND_SERVICE_XMPP_ERROR, 3
      value :INBOUND_SERVICE_XMPP_MESSAGE, 4
      value :INBOUND_SERVICE_XMPP_SUBSCRIBE, 5
      value :INBOUND_SERVICE_XMPP_PRESENCE, 6
      value :INBOUND_SERVICE_CHANNEL_PRESENCE, 7
      value :INBOUND_SERVICE_WARMUP, 9
    end
    add_enum "google.appengine.v1.ServingStatus" do
      value :SERVING_STATUS_UNSPECIFIED, 0
      value :SERVING, 1
      value :STOPPED, 2
    end
  end
end

module Google
  module Cloud
    module AppEngine
      module V1
        Version = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.Version").msgclass
        EndpointsApiService = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.EndpointsApiService").msgclass
        EndpointsApiService::RolloutStrategy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.EndpointsApiService.RolloutStrategy").enummodule
        AutomaticScaling = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.AutomaticScaling").msgclass
        BasicScaling = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.BasicScaling").msgclass
        ManualScaling = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.ManualScaling").msgclass
        CpuUtilization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.CpuUtilization").msgclass
        RequestUtilization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.RequestUtilization").msgclass
        DiskUtilization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.DiskUtilization").msgclass
        NetworkUtilization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.NetworkUtilization").msgclass
        StandardSchedulerSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.StandardSchedulerSettings").msgclass
        Network = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.Network").msgclass
        Volume = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.Volume").msgclass
        Resources = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.Resources").msgclass
        VpcAccessConnector = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.VpcAccessConnector").msgclass
        Entrypoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.Entrypoint").msgclass
        InboundServiceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.InboundServiceType").enummodule
        ServingStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.ServingStatus").enummodule
      end
    end
  end
end
