# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/security/privateca/v1/service.proto for package 'Google.Cloud.Security.PrivateCA.V1'
# Original file comments:
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/security/privateca/v1/service_pb'

module Google
  module Cloud
    module Security
      module PrivateCA
        module V1
          module CertificateAuthorityService
            # [Certificate Authority Service][google.cloud.security.privateca.v1.CertificateAuthorityService] manages private
            # certificate authorities and issued certificates.
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.cloud.security.privateca.v1.CertificateAuthorityService'

              # Create a new [Certificate][google.cloud.security.privateca.v1.Certificate] in a given Project, Location from a particular
              # [CaPool][google.cloud.security.privateca.v1.CaPool].
              rpc :CreateCertificate, ::Google::Cloud::Security::PrivateCA::V1::CreateCertificateRequest, ::Google::Cloud::Security::PrivateCA::V1::Certificate
              # Returns a [Certificate][google.cloud.security.privateca.v1.Certificate].
              rpc :GetCertificate, ::Google::Cloud::Security::PrivateCA::V1::GetCertificateRequest, ::Google::Cloud::Security::PrivateCA::V1::Certificate
              # Lists [Certificates][google.cloud.security.privateca.v1.Certificate].
              rpc :ListCertificates, ::Google::Cloud::Security::PrivateCA::V1::ListCertificatesRequest, ::Google::Cloud::Security::PrivateCA::V1::ListCertificatesResponse
              # Revoke a [Certificate][google.cloud.security.privateca.v1.Certificate].
              rpc :RevokeCertificate, ::Google::Cloud::Security::PrivateCA::V1::RevokeCertificateRequest, ::Google::Cloud::Security::PrivateCA::V1::Certificate
              # Update a [Certificate][google.cloud.security.privateca.v1.Certificate]. Currently, the only field you can update is the
              # [labels][google.cloud.security.privateca.v1.Certificate.labels] field.
              rpc :UpdateCertificate, ::Google::Cloud::Security::PrivateCA::V1::UpdateCertificateRequest, ::Google::Cloud::Security::PrivateCA::V1::Certificate
              # Activate a [CertificateAuthority][google.cloud.security.privateca.v1.CertificateAuthority] that is in state
              # [AWAITING_USER_ACTIVATION][google.cloud.security.privateca.v1.CertificateAuthority.State.AWAITING_USER_ACTIVATION]
              # and is of type [SUBORDINATE][google.cloud.security.privateca.v1.CertificateAuthority.Type.SUBORDINATE]. After
              # the parent Certificate Authority signs a certificate signing request from
              # [FetchCertificateAuthorityCsr][google.cloud.security.privateca.v1.CertificateAuthorityService.FetchCertificateAuthorityCsr], this method can complete the activation
              # process.
              rpc :ActivateCertificateAuthority, ::Google::Cloud::Security::PrivateCA::V1::ActivateCertificateAuthorityRequest, ::Google::Longrunning::Operation
              # Create a new [CertificateAuthority][google.cloud.security.privateca.v1.CertificateAuthority] in a given Project and Location.
              rpc :CreateCertificateAuthority, ::Google::Cloud::Security::PrivateCA::V1::CreateCertificateAuthorityRequest, ::Google::Longrunning::Operation
              # Disable a [CertificateAuthority][google.cloud.security.privateca.v1.CertificateAuthority].
              rpc :DisableCertificateAuthority, ::Google::Cloud::Security::PrivateCA::V1::DisableCertificateAuthorityRequest, ::Google::Longrunning::Operation
              # Enable a [CertificateAuthority][google.cloud.security.privateca.v1.CertificateAuthority].
              rpc :EnableCertificateAuthority, ::Google::Cloud::Security::PrivateCA::V1::EnableCertificateAuthorityRequest, ::Google::Longrunning::Operation
              # Fetch a certificate signing request (CSR) from a [CertificateAuthority][google.cloud.security.privateca.v1.CertificateAuthority]
              # that is in state
              # [AWAITING_USER_ACTIVATION][google.cloud.security.privateca.v1.CertificateAuthority.State.AWAITING_USER_ACTIVATION]
              # and is of type [SUBORDINATE][google.cloud.security.privateca.v1.CertificateAuthority.Type.SUBORDINATE]. The
              # CSR must then be signed by the desired parent Certificate Authority, which
              # could be another [CertificateAuthority][google.cloud.security.privateca.v1.CertificateAuthority] resource, or could be an on-prem
              # certificate authority. See also [ActivateCertificateAuthority][google.cloud.security.privateca.v1.CertificateAuthorityService.ActivateCertificateAuthority].
              rpc :FetchCertificateAuthorityCsr, ::Google::Cloud::Security::PrivateCA::V1::FetchCertificateAuthorityCsrRequest, ::Google::Cloud::Security::PrivateCA::V1::FetchCertificateAuthorityCsrResponse
              # Returns a [CertificateAuthority][google.cloud.security.privateca.v1.CertificateAuthority].
              rpc :GetCertificateAuthority, ::Google::Cloud::Security::PrivateCA::V1::GetCertificateAuthorityRequest, ::Google::Cloud::Security::PrivateCA::V1::CertificateAuthority
              # Lists [CertificateAuthorities][google.cloud.security.privateca.v1.CertificateAuthority].
              rpc :ListCertificateAuthorities, ::Google::Cloud::Security::PrivateCA::V1::ListCertificateAuthoritiesRequest, ::Google::Cloud::Security::PrivateCA::V1::ListCertificateAuthoritiesResponse
              # Undelete a [CertificateAuthority][google.cloud.security.privateca.v1.CertificateAuthority] that has been deleted.
              rpc :UndeleteCertificateAuthority, ::Google::Cloud::Security::PrivateCA::V1::UndeleteCertificateAuthorityRequest, ::Google::Longrunning::Operation
              # Delete a [CertificateAuthority][google.cloud.security.privateca.v1.CertificateAuthority].
              rpc :DeleteCertificateAuthority, ::Google::Cloud::Security::PrivateCA::V1::DeleteCertificateAuthorityRequest, ::Google::Longrunning::Operation
              # Update a [CertificateAuthority][google.cloud.security.privateca.v1.CertificateAuthority].
              rpc :UpdateCertificateAuthority, ::Google::Cloud::Security::PrivateCA::V1::UpdateCertificateAuthorityRequest, ::Google::Longrunning::Operation
              # Create a [CaPool][google.cloud.security.privateca.v1.CaPool].
              rpc :CreateCaPool, ::Google::Cloud::Security::PrivateCA::V1::CreateCaPoolRequest, ::Google::Longrunning::Operation
              # Update a [CaPool][google.cloud.security.privateca.v1.CaPool].
              rpc :UpdateCaPool, ::Google::Cloud::Security::PrivateCA::V1::UpdateCaPoolRequest, ::Google::Longrunning::Operation
              # Returns a [CaPool][google.cloud.security.privateca.v1.CaPool].
              rpc :GetCaPool, ::Google::Cloud::Security::PrivateCA::V1::GetCaPoolRequest, ::Google::Cloud::Security::PrivateCA::V1::CaPool
              # Lists [CaPools][google.cloud.security.privateca.v1.CaPool].
              rpc :ListCaPools, ::Google::Cloud::Security::PrivateCA::V1::ListCaPoolsRequest, ::Google::Cloud::Security::PrivateCA::V1::ListCaPoolsResponse
              # Delete a [CaPool][google.cloud.security.privateca.v1.CaPool].
              rpc :DeleteCaPool, ::Google::Cloud::Security::PrivateCA::V1::DeleteCaPoolRequest, ::Google::Longrunning::Operation
              # FetchCaCerts returns the current trust anchor for the [CaPool][google.cloud.security.privateca.v1.CaPool]. This will
              # include CA certificate chains for all ACTIVE [CertificateAuthority][google.cloud.security.privateca.v1.CertificateAuthority]
              # resources in the [CaPool][google.cloud.security.privateca.v1.CaPool].
              rpc :FetchCaCerts, ::Google::Cloud::Security::PrivateCA::V1::FetchCaCertsRequest, ::Google::Cloud::Security::PrivateCA::V1::FetchCaCertsResponse
              # Returns a [CertificateRevocationList][google.cloud.security.privateca.v1.CertificateRevocationList].
              rpc :GetCertificateRevocationList, ::Google::Cloud::Security::PrivateCA::V1::GetCertificateRevocationListRequest, ::Google::Cloud::Security::PrivateCA::V1::CertificateRevocationList
              # Lists [CertificateRevocationLists][google.cloud.security.privateca.v1.CertificateRevocationList].
              rpc :ListCertificateRevocationLists, ::Google::Cloud::Security::PrivateCA::V1::ListCertificateRevocationListsRequest, ::Google::Cloud::Security::PrivateCA::V1::ListCertificateRevocationListsResponse
              # Update a [CertificateRevocationList][google.cloud.security.privateca.v1.CertificateRevocationList].
              rpc :UpdateCertificateRevocationList, ::Google::Cloud::Security::PrivateCA::V1::UpdateCertificateRevocationListRequest, ::Google::Longrunning::Operation
              # Create a new [CertificateTemplate][google.cloud.security.privateca.v1.CertificateTemplate] in a given Project and Location.
              rpc :CreateCertificateTemplate, ::Google::Cloud::Security::PrivateCA::V1::CreateCertificateTemplateRequest, ::Google::Longrunning::Operation
              # DeleteCertificateTemplate deletes a [CertificateTemplate][google.cloud.security.privateca.v1.CertificateTemplate].
              rpc :DeleteCertificateTemplate, ::Google::Cloud::Security::PrivateCA::V1::DeleteCertificateTemplateRequest, ::Google::Longrunning::Operation
              # Returns a [CertificateTemplate][google.cloud.security.privateca.v1.CertificateTemplate].
              rpc :GetCertificateTemplate, ::Google::Cloud::Security::PrivateCA::V1::GetCertificateTemplateRequest, ::Google::Cloud::Security::PrivateCA::V1::CertificateTemplate
              # Lists [CertificateTemplates][google.cloud.security.privateca.v1.CertificateTemplate].
              rpc :ListCertificateTemplates, ::Google::Cloud::Security::PrivateCA::V1::ListCertificateTemplatesRequest, ::Google::Cloud::Security::PrivateCA::V1::ListCertificateTemplatesResponse
              # Update a [CertificateTemplate][google.cloud.security.privateca.v1.CertificateTemplate].
              rpc :UpdateCertificateTemplate, ::Google::Cloud::Security::PrivateCA::V1::UpdateCertificateTemplateRequest, ::Google::Longrunning::Operation
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
