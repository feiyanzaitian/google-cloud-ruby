# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/prediction_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/httpbody_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/explanation_pb'
require 'google/protobuf/struct_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/prediction_service.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.PredictRequest" do
      optional :endpoint, :string, 1
      repeated :instances, :message, 2, "google.protobuf.Value"
      optional :parameters, :message, 3, "google.protobuf.Value"
    end
    add_message "google.cloud.aiplatform.v1.PredictResponse" do
      repeated :predictions, :message, 1, "google.protobuf.Value"
      optional :deployed_model_id, :string, 2
      optional :model, :string, 3
      optional :model_display_name, :string, 4
    end
    add_message "google.cloud.aiplatform.v1.RawPredictRequest" do
      optional :endpoint, :string, 1
      optional :http_body, :message, 2, "google.api.HttpBody"
    end
    add_message "google.cloud.aiplatform.v1.ExplainRequest" do
      optional :endpoint, :string, 1
      repeated :instances, :message, 2, "google.protobuf.Value"
      optional :parameters, :message, 4, "google.protobuf.Value"
      optional :explanation_spec_override, :message, 5, "google.cloud.aiplatform.v1.ExplanationSpecOverride"
      optional :deployed_model_id, :string, 3
    end
    add_message "google.cloud.aiplatform.v1.ExplainResponse" do
      repeated :explanations, :message, 1, "google.cloud.aiplatform.v1.Explanation"
      optional :deployed_model_id, :string, 2
      repeated :predictions, :message, 3, "google.protobuf.Value"
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        PredictRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PredictRequest").msgclass
        PredictResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PredictResponse").msgclass
        RawPredictRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.RawPredictRequest").msgclass
        ExplainRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExplainRequest").msgclass
        ExplainResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExplainResponse").msgclass
      end
    end
  end
end
