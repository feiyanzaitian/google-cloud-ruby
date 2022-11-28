# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/billing/v1/cloud_catalog.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'
require 'google/type/money_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/billing/v1/cloud_catalog.proto", :syntax => :proto3) do
    add_message "google.cloud.billing.v1.Service" do
      optional :name, :string, 1
      optional :service_id, :string, 2
      optional :display_name, :string, 3
      optional :business_entity_name, :string, 4
    end
    add_message "google.cloud.billing.v1.Sku" do
      optional :name, :string, 1
      optional :sku_id, :string, 2
      optional :description, :string, 3
      optional :category, :message, 4, "google.cloud.billing.v1.Category"
      repeated :service_regions, :string, 5
      repeated :pricing_info, :message, 6, "google.cloud.billing.v1.PricingInfo"
      optional :service_provider_name, :string, 7
      optional :geo_taxonomy, :message, 8, "google.cloud.billing.v1.GeoTaxonomy"
    end
    add_message "google.cloud.billing.v1.Category" do
      optional :service_display_name, :string, 1
      optional :resource_family, :string, 2
      optional :resource_group, :string, 3
      optional :usage_type, :string, 4
    end
    add_message "google.cloud.billing.v1.PricingInfo" do
      optional :effective_time, :message, 1, "google.protobuf.Timestamp"
      optional :summary, :string, 2
      optional :pricing_expression, :message, 3, "google.cloud.billing.v1.PricingExpression"
      optional :aggregation_info, :message, 4, "google.cloud.billing.v1.AggregationInfo"
      optional :currency_conversion_rate, :double, 5
    end
    add_message "google.cloud.billing.v1.PricingExpression" do
      optional :usage_unit, :string, 1
      optional :display_quantity, :double, 2
      repeated :tiered_rates, :message, 3, "google.cloud.billing.v1.PricingExpression.TierRate"
      optional :usage_unit_description, :string, 4
      optional :base_unit, :string, 5
      optional :base_unit_description, :string, 6
      optional :base_unit_conversion_factor, :double, 7
    end
    add_message "google.cloud.billing.v1.PricingExpression.TierRate" do
      optional :start_usage_amount, :double, 1
      optional :unit_price, :message, 2, "google.type.Money"
    end
    add_message "google.cloud.billing.v1.AggregationInfo" do
      optional :aggregation_level, :enum, 1, "google.cloud.billing.v1.AggregationInfo.AggregationLevel"
      optional :aggregation_interval, :enum, 2, "google.cloud.billing.v1.AggregationInfo.AggregationInterval"
      optional :aggregation_count, :int32, 3
    end
    add_enum "google.cloud.billing.v1.AggregationInfo.AggregationLevel" do
      value :AGGREGATION_LEVEL_UNSPECIFIED, 0
      value :ACCOUNT, 1
      value :PROJECT, 2
    end
    add_enum "google.cloud.billing.v1.AggregationInfo.AggregationInterval" do
      value :AGGREGATION_INTERVAL_UNSPECIFIED, 0
      value :DAILY, 1
      value :MONTHLY, 2
    end
    add_message "google.cloud.billing.v1.GeoTaxonomy" do
      optional :type, :enum, 1, "google.cloud.billing.v1.GeoTaxonomy.Type"
      repeated :regions, :string, 2
    end
    add_enum "google.cloud.billing.v1.GeoTaxonomy.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :GLOBAL, 1
      value :REGIONAL, 2
      value :MULTI_REGIONAL, 3
    end
    add_message "google.cloud.billing.v1.ListServicesRequest" do
      optional :page_size, :int32, 1
      optional :page_token, :string, 2
    end
    add_message "google.cloud.billing.v1.ListServicesResponse" do
      repeated :services, :message, 1, "google.cloud.billing.v1.Service"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.billing.v1.ListSkusRequest" do
      optional :parent, :string, 1
      optional :start_time, :message, 2, "google.protobuf.Timestamp"
      optional :end_time, :message, 3, "google.protobuf.Timestamp"
      optional :currency_code, :string, 4
      optional :page_size, :int32, 5
      optional :page_token, :string, 6
    end
    add_message "google.cloud.billing.v1.ListSkusResponse" do
      repeated :skus, :message, 1, "google.cloud.billing.v1.Sku"
      optional :next_page_token, :string, 2
    end
  end
end

module Google
  module Cloud
    module Billing
      module V1
        Service = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.v1.Service").msgclass
        Sku = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.v1.Sku").msgclass
        Category = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.v1.Category").msgclass
        PricingInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.v1.PricingInfo").msgclass
        PricingExpression = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.v1.PricingExpression").msgclass
        PricingExpression::TierRate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.v1.PricingExpression.TierRate").msgclass
        AggregationInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.v1.AggregationInfo").msgclass
        AggregationInfo::AggregationLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.v1.AggregationInfo.AggregationLevel").enummodule
        AggregationInfo::AggregationInterval = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.v1.AggregationInfo.AggregationInterval").enummodule
        GeoTaxonomy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.v1.GeoTaxonomy").msgclass
        GeoTaxonomy::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.v1.GeoTaxonomy.Type").enummodule
        ListServicesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.v1.ListServicesRequest").msgclass
        ListServicesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.v1.ListServicesResponse").msgclass
        ListSkusRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.v1.ListSkusRequest").msgclass
        ListSkusResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.v1.ListSkusResponse").msgclass
      end
    end
  end
end
