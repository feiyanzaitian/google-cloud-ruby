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

require "google/cloud/artifact_registry/v1/artifact_registry"

class ::Google::Cloud::ArtifactRegistry::V1::ArtifactRegistry::ClientPathsTest < Minitest::Test
  def test_docker_image_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::ArtifactRegistry::V1::ArtifactRegistry::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.docker_image_path project: "value0", location: "value1", repository: "value2", docker_image: "value3"
      assert_equal "projects/value0/locations/value1/repositories/value2/dockerImages/value3", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::ArtifactRegistry::V1::ArtifactRegistry::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_project_settings_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::ArtifactRegistry::V1::ArtifactRegistry::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.project_settings_path project: "value0"
      assert_equal "projects/value0/projectSettings", path
    end
  end

  def test_repository_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::ArtifactRegistry::V1::ArtifactRegistry::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.repository_path project: "value0", location: "value1", repository: "value2"
      assert_equal "projects/value0/locations/value1/repositories/value2", path
    end
  end

  def test_tag_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::ArtifactRegistry::V1::ArtifactRegistry::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.tag_path project: "value0", location: "value1", repository: "value2", package: "value3", tag: "value4"
      assert_equal "projects/value0/locations/value1/repositories/value2/packages/value3/tags/value4", path
    end
  end
end
