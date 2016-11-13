require 'spec_helper'

describe AdRoll::Uhura::Deliveries::Domain do
  let!(:basic_auth) { "#{AdRoll.user_name}:#{AdRoll.password}" }
  let!(:base_uri) { 'https://app.adroll.com/uhura/v1/deliveries/domain' }

  subject { described_class }

  describe '::ad' do
    let!(:request_uri) { "#{base_uri}/ad" }
    let!(:params) do
      { ad_eids: 'AD123' }
    end

    it 'calls the api with the correct params' do
      subject.ad(ad_eids: 'AD123')
      expect(WebMock).to have_requested(:get, request_uri).with(query: params)
    end
  end

  describe '::adgroup' do
    let!(:request_uri) { "#{base_uri}/adgroup" }
    let!(:params) do
      { ad_eids: 'AD123' }
    end

    it 'calls the api with the correct params' do
      subject.adgroup(ad_eids: 'AD123')
      expect(WebMock).to have_requested(:get, request_uri).with(query: params)
    end
  end

  describe '::export' do
    let!(:request_uri) { "#{base_uri}/export" }
    let!(:params) do
      { ad_eids: 'AD123' }
    end

    it 'calls the api with the correct params' do
      subject.export(ad_eids: 'AD123')
      expect(WebMock).to have_requested(:get, request_uri).with(query: params)
    end
  end
end
