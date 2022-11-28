# frozen_string_literal: true

# Copyright 2021 Google LLC
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

# [START privateca_v1_generated_CertificateAuthorityService_DeleteCertificateTemplate_sync]
require "google/cloud/security/private_ca/v1"

##
# Example demonstrating basic usage of
# Google::Cloud::Security::PrivateCA::V1::CertificateAuthorityService::Client#delete_certificate_template
#
def delete_certificate_template
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Security::PrivateCA::V1::CertificateAuthorityService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Security::PrivateCA::V1::DeleteCertificateTemplateRequest.new

  # Call the delete_certificate_template method.
  result = client.delete_certificate_template request

  # The returned object is of type Gapic::Operation. You can use this
  # object to check the status of an operation, cancel it, or wait
  # for results. Here is how to block until completion:
  result.wait_until_done! timeout: 60
  if result.response?
    p result.response
  else
    puts "Error!"
  end
end
# [END privateca_v1_generated_CertificateAuthorityService_DeleteCertificateTemplate_sync]
