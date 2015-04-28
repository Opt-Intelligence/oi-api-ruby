require 'spec_helper'

require 'shared_examples_for_get_resource.rb'
require 'shared_examples_for_get_resources.rb'
require 'shared_examples_for_post_resource.rb'
require 'shared_examples_for_put_resource.rb'
require 'shared_examples_for_delete_resource.rb'

RSpec.describe OiApi::Client::Reports, :focus do

  let(:api) { Factory.api_client }
  let(:advertiser) { Factory.create_advertiser }

  context '#reports', :vcr do

    let(:response) { api.reports }

    it_should_behave_like 'GET resources', :report

    it 'returns a report summary' do
      expect(response['data'].keys).to eql ['today', 'yesterday', 'mtd']
    end

  end

  context '#reports with query params', :vcr do

    it 'retrieves the last 60 days of data' do
      sixty_days_ago = (Time.now - 86400 * 60).strftime('%Y-%m-%d')
      expect(api.reports(query: {start: sixty_days_ago})['data'].keys).to eql ['custom']
    end

  end

end
