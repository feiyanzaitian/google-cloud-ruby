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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/binaryauthorization/v1/service_pb"
require "google/cloud/binaryauthorization/v1/service_services_pb"
require "google/cloud/binary_authorization/v1/binauthz_management_service"

class ::Google::Cloud::BinaryAuthorization::V1::BinauthzManagementService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_get_policy
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::BinaryAuthorization::V1::Policy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_policy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_policy, name
      assert_kind_of ::Google::Cloud::BinaryAuthorization::V1::GetPolicyRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_policy_client_stub do
      # Create client
      client = ::Google::Cloud::BinaryAuthorization::V1::BinauthzManagementService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_policy({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_policy name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_policy ::Google::Cloud::BinaryAuthorization::V1::GetPolicyRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_policy({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_policy(::Google::Cloud::BinaryAuthorization::V1::GetPolicyRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_policy_client_stub.call_rpc_count
    end
  end

  def test_update_policy
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::BinaryAuthorization::V1::Policy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    policy = {}

    update_policy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_policy, name
      assert_kind_of ::Google::Cloud::BinaryAuthorization::V1::UpdatePolicyRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::BinaryAuthorization::V1::Policy), request["policy"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_policy_client_stub do
      # Create client
      client = ::Google::Cloud::BinaryAuthorization::V1::BinauthzManagementService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_policy({ policy: policy }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_policy policy: policy do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_policy ::Google::Cloud::BinaryAuthorization::V1::UpdatePolicyRequest.new(policy: policy) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_policy({ policy: policy }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_policy(::Google::Cloud::BinaryAuthorization::V1::UpdatePolicyRequest.new(policy: policy), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_policy_client_stub.call_rpc_count
    end
  end

  def test_create_attestor
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::BinaryAuthorization::V1::Attestor.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    attestor_id = "hello world"
    attestor = {}

    create_attestor_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_attestor, name
      assert_kind_of ::Google::Cloud::BinaryAuthorization::V1::CreateAttestorRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["attestor_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::BinaryAuthorization::V1::Attestor), request["attestor"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_attestor_client_stub do
      # Create client
      client = ::Google::Cloud::BinaryAuthorization::V1::BinauthzManagementService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_attestor({ parent: parent, attestor_id: attestor_id, attestor: attestor }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_attestor parent: parent, attestor_id: attestor_id, attestor: attestor do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_attestor ::Google::Cloud::BinaryAuthorization::V1::CreateAttestorRequest.new(parent: parent, attestor_id: attestor_id, attestor: attestor) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_attestor({ parent: parent, attestor_id: attestor_id, attestor: attestor }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_attestor(::Google::Cloud::BinaryAuthorization::V1::CreateAttestorRequest.new(parent: parent, attestor_id: attestor_id, attestor: attestor), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_attestor_client_stub.call_rpc_count
    end
  end

  def test_get_attestor
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::BinaryAuthorization::V1::Attestor.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_attestor_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_attestor, name
      assert_kind_of ::Google::Cloud::BinaryAuthorization::V1::GetAttestorRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_attestor_client_stub do
      # Create client
      client = ::Google::Cloud::BinaryAuthorization::V1::BinauthzManagementService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_attestor({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_attestor name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_attestor ::Google::Cloud::BinaryAuthorization::V1::GetAttestorRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_attestor({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_attestor(::Google::Cloud::BinaryAuthorization::V1::GetAttestorRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_attestor_client_stub.call_rpc_count
    end
  end

  def test_update_attestor
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::BinaryAuthorization::V1::Attestor.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    attestor = {}

    update_attestor_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_attestor, name
      assert_kind_of ::Google::Cloud::BinaryAuthorization::V1::UpdateAttestorRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::BinaryAuthorization::V1::Attestor), request["attestor"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_attestor_client_stub do
      # Create client
      client = ::Google::Cloud::BinaryAuthorization::V1::BinauthzManagementService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_attestor({ attestor: attestor }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_attestor attestor: attestor do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_attestor ::Google::Cloud::BinaryAuthorization::V1::UpdateAttestorRequest.new(attestor: attestor) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_attestor({ attestor: attestor }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_attestor(::Google::Cloud::BinaryAuthorization::V1::UpdateAttestorRequest.new(attestor: attestor), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_attestor_client_stub.call_rpc_count
    end
  end

  def test_list_attestors
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::BinaryAuthorization::V1::ListAttestorsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_attestors_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_attestors, name
      assert_kind_of ::Google::Cloud::BinaryAuthorization::V1::ListAttestorsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_attestors_client_stub do
      # Create client
      client = ::Google::Cloud::BinaryAuthorization::V1::BinauthzManagementService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_attestors({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_attestors parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_attestors ::Google::Cloud::BinaryAuthorization::V1::ListAttestorsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_attestors({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_attestors(::Google::Cloud::BinaryAuthorization::V1::ListAttestorsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_attestors_client_stub.call_rpc_count
    end
  end

  def test_delete_attestor
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_attestor_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_attestor, name
      assert_kind_of ::Google::Cloud::BinaryAuthorization::V1::DeleteAttestorRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_attestor_client_stub do
      # Create client
      client = ::Google::Cloud::BinaryAuthorization::V1::BinauthzManagementService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_attestor({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_attestor name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_attestor ::Google::Cloud::BinaryAuthorization::V1::DeleteAttestorRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_attestor({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_attestor(::Google::Cloud::BinaryAuthorization::V1::DeleteAttestorRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_attestor_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::BinaryAuthorization::V1::BinauthzManagementService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::BinaryAuthorization::V1::BinauthzManagementService::Client::Configuration, config
  end
end
