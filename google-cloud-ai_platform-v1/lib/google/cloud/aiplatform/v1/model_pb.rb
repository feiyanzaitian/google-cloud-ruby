# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/model.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/deployed_model_ref_pb'
require 'google/cloud/aiplatform/v1/encryption_spec_pb'
require 'google/cloud/aiplatform/v1/env_var_pb'
require 'google/cloud/aiplatform/v1/explanation_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/model.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.Model" do
      optional :name, :string, 1
      optional :version_id, :string, 28
      repeated :version_aliases, :string, 29
      optional :version_create_time, :message, 31, "google.protobuf.Timestamp"
      optional :version_update_time, :message, 32, "google.protobuf.Timestamp"
      optional :display_name, :string, 2
      optional :description, :string, 3
      optional :version_description, :string, 30
      optional :predict_schemata, :message, 4, "google.cloud.aiplatform.v1.PredictSchemata"
      optional :metadata_schema_uri, :string, 5
      optional :metadata, :message, 6, "google.protobuf.Value"
      repeated :supported_export_formats, :message, 20, "google.cloud.aiplatform.v1.Model.ExportFormat"
      optional :training_pipeline, :string, 7
      optional :container_spec, :message, 9, "google.cloud.aiplatform.v1.ModelContainerSpec"
      optional :artifact_uri, :string, 26
      repeated :supported_deployment_resources_types, :enum, 10, "google.cloud.aiplatform.v1.Model.DeploymentResourcesType"
      repeated :supported_input_storage_formats, :string, 11
      repeated :supported_output_storage_formats, :string, 12
      optional :create_time, :message, 13, "google.protobuf.Timestamp"
      optional :update_time, :message, 14, "google.protobuf.Timestamp"
      repeated :deployed_models, :message, 15, "google.cloud.aiplatform.v1.DeployedModelRef"
      optional :explanation_spec, :message, 23, "google.cloud.aiplatform.v1.ExplanationSpec"
      optional :etag, :string, 16
      map :labels, :string, :string, 17
      optional :encryption_spec, :message, 24, "google.cloud.aiplatform.v1.EncryptionSpec"
      optional :model_source_info, :message, 38, "google.cloud.aiplatform.v1.ModelSourceInfo"
      optional :metadata_artifact, :string, 44
    end
    add_message "google.cloud.aiplatform.v1.Model.ExportFormat" do
      optional :id, :string, 1
      repeated :exportable_contents, :enum, 2, "google.cloud.aiplatform.v1.Model.ExportFormat.ExportableContent"
    end
    add_enum "google.cloud.aiplatform.v1.Model.ExportFormat.ExportableContent" do
      value :EXPORTABLE_CONTENT_UNSPECIFIED, 0
      value :ARTIFACT, 1
      value :IMAGE, 2
    end
    add_enum "google.cloud.aiplatform.v1.Model.DeploymentResourcesType" do
      value :DEPLOYMENT_RESOURCES_TYPE_UNSPECIFIED, 0
      value :DEDICATED_RESOURCES, 1
      value :AUTOMATIC_RESOURCES, 2
      value :SHARED_RESOURCES, 3
    end
    add_message "google.cloud.aiplatform.v1.PredictSchemata" do
      optional :instance_schema_uri, :string, 1
      optional :parameters_schema_uri, :string, 2
      optional :prediction_schema_uri, :string, 3
    end
    add_message "google.cloud.aiplatform.v1.ModelContainerSpec" do
      optional :image_uri, :string, 1
      repeated :command, :string, 2
      repeated :args, :string, 3
      repeated :env, :message, 4, "google.cloud.aiplatform.v1.EnvVar"
      repeated :ports, :message, 5, "google.cloud.aiplatform.v1.Port"
      optional :predict_route, :string, 6
      optional :health_route, :string, 7
    end
    add_message "google.cloud.aiplatform.v1.Port" do
      optional :container_port, :int32, 3
    end
    add_message "google.cloud.aiplatform.v1.ModelSourceInfo" do
      optional :source_type, :enum, 1, "google.cloud.aiplatform.v1.ModelSourceInfo.ModelSourceType"
    end
    add_enum "google.cloud.aiplatform.v1.ModelSourceInfo.ModelSourceType" do
      value :MODEL_SOURCE_TYPE_UNSPECIFIED, 0
      value :AUTOML, 1
      value :CUSTOM, 2
      value :BQML, 3
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        Model = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Model").msgclass
        Model::ExportFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Model.ExportFormat").msgclass
        Model::ExportFormat::ExportableContent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Model.ExportFormat.ExportableContent").enummodule
        Model::DeploymentResourcesType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Model.DeploymentResourcesType").enummodule
        PredictSchemata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PredictSchemata").msgclass
        ModelContainerSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ModelContainerSpec").msgclass
        Port = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Port").msgclass
        ModelSourceInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ModelSourceInfo").msgclass
        ModelSourceInfo::ModelSourceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ModelSourceInfo.ModelSourceType").enummodule
      end
    end
  end
end
