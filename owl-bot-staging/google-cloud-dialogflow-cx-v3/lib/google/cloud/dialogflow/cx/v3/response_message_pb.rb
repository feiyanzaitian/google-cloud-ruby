# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/response_message.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/struct_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dialogflow/cx/v3/response_message.proto", :syntax => :proto3) do
    add_message "google.cloud.dialogflow.cx.v3.ResponseMessage" do
      oneof :message do
        optional :text, :message, 1, "google.cloud.dialogflow.cx.v3.ResponseMessage.Text"
        optional :payload, :message, 2, "google.protobuf.Struct"
        optional :conversation_success, :message, 9, "google.cloud.dialogflow.cx.v3.ResponseMessage.ConversationSuccess"
        optional :output_audio_text, :message, 8, "google.cloud.dialogflow.cx.v3.ResponseMessage.OutputAudioText"
        optional :live_agent_handoff, :message, 10, "google.cloud.dialogflow.cx.v3.ResponseMessage.LiveAgentHandoff"
        optional :end_interaction, :message, 11, "google.cloud.dialogflow.cx.v3.ResponseMessage.EndInteraction"
        optional :play_audio, :message, 12, "google.cloud.dialogflow.cx.v3.ResponseMessage.PlayAudio"
        optional :mixed_audio, :message, 13, "google.cloud.dialogflow.cx.v3.ResponseMessage.MixedAudio"
        optional :telephony_transfer_call, :message, 18, "google.cloud.dialogflow.cx.v3.ResponseMessage.TelephonyTransferCall"
      end
    end
    add_message "google.cloud.dialogflow.cx.v3.ResponseMessage.Text" do
      repeated :text, :string, 1
      optional :allow_playback_interruption, :bool, 2
    end
    add_message "google.cloud.dialogflow.cx.v3.ResponseMessage.LiveAgentHandoff" do
      optional :metadata, :message, 1, "google.protobuf.Struct"
    end
    add_message "google.cloud.dialogflow.cx.v3.ResponseMessage.ConversationSuccess" do
      optional :metadata, :message, 1, "google.protobuf.Struct"
    end
    add_message "google.cloud.dialogflow.cx.v3.ResponseMessage.OutputAudioText" do
      optional :allow_playback_interruption, :bool, 3
      oneof :source do
        optional :text, :string, 1
        optional :ssml, :string, 2
      end
    end
    add_message "google.cloud.dialogflow.cx.v3.ResponseMessage.EndInteraction" do
    end
    add_message "google.cloud.dialogflow.cx.v3.ResponseMessage.PlayAudio" do
      optional :audio_uri, :string, 1
      optional :allow_playback_interruption, :bool, 2
    end
    add_message "google.cloud.dialogflow.cx.v3.ResponseMessage.MixedAudio" do
      repeated :segments, :message, 1, "google.cloud.dialogflow.cx.v3.ResponseMessage.MixedAudio.Segment"
    end
    add_message "google.cloud.dialogflow.cx.v3.ResponseMessage.MixedAudio.Segment" do
      optional :allow_playback_interruption, :bool, 3
      oneof :content do
        optional :audio, :bytes, 1
        optional :uri, :string, 2
      end
    end
    add_message "google.cloud.dialogflow.cx.v3.ResponseMessage.TelephonyTransferCall" do
      oneof :endpoint do
        optional :phone_number, :string, 1
      end
    end
  end
end

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          ResponseMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ResponseMessage").msgclass
          ResponseMessage::Text = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ResponseMessage.Text").msgclass
          ResponseMessage::LiveAgentHandoff = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ResponseMessage.LiveAgentHandoff").msgclass
          ResponseMessage::ConversationSuccess = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ResponseMessage.ConversationSuccess").msgclass
          ResponseMessage::OutputAudioText = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ResponseMessage.OutputAudioText").msgclass
          ResponseMessage::EndInteraction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ResponseMessage.EndInteraction").msgclass
          ResponseMessage::PlayAudio = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ResponseMessage.PlayAudio").msgclass
          ResponseMessage::MixedAudio = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ResponseMessage.MixedAudio").msgclass
          ResponseMessage::MixedAudio::Segment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ResponseMessage.MixedAudio.Segment").msgclass
          ResponseMessage::TelephonyTransferCall = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ResponseMessage.TelephonyTransferCall").msgclass
        end
      end
    end
  end
end
