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

require "google/cloud/kms/v1/key_management_service"

class ::Google::Cloud::Kms::V1::KeyManagementService::ClientPathsTest < Minitest::Test
  def test_crypto_key_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Kms::V1::KeyManagementService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.crypto_key_path project: "value0", location: "value1", key_ring: "value2", crypto_key: "value3"
      assert_equal "projects/value0/locations/value1/keyRings/value2/cryptoKeys/value3", path
    end
  end

  def test_crypto_key_version_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Kms::V1::KeyManagementService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.crypto_key_version_path project: "value0", location: "value1", key_ring: "value2", crypto_key: "value3", crypto_key_version: "value4"
      assert_equal "projects/value0/locations/value1/keyRings/value2/cryptoKeys/value3/cryptoKeyVersions/value4", path
    end
  end

  def test_import_job_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Kms::V1::KeyManagementService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.import_job_path project: "value0", location: "value1", key_ring: "value2", import_job: "value3"
      assert_equal "projects/value0/locations/value1/keyRings/value2/importJobs/value3", path
    end
  end

  def test_key_ring_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Kms::V1::KeyManagementService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.key_ring_path project: "value0", location: "value1", key_ring: "value2"
      assert_equal "projects/value0/locations/value1/keyRings/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Kms::V1::KeyManagementService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end
end