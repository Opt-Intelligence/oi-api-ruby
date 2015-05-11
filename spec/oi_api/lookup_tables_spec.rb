require 'spec_helper'

RSpec.describe OiApi::LookupTables do

  context 'data_fields' do

    it 'returns the correct array of hashes' do
      expect(OiApi::LookupTables.data_fields).to eql([
        { first_name:     '#{FN}'},
        { last_name:      '#{LN}'},
        { email:          '#{EM}'},
        { street_address: '#{AD1}'},
        { city:           '#{CI}'},
        { state:          '#{ST}'},
        { postal_code:    '#{PO}'},
        { country:        '#{CO}'},
        { home_phone:     '#{HP}'},
        { mobile_phone:   '#{MP}'},
        { gender:         '#{G}'},
        { date_of_birth:  '#{DOB}'}
      ])
    end

    it 'returns the OI name for a given data point' do
      expect(OiApi::LookupTables.data_field_oi_name(:first_name)).to eql('FN')
    end

  end

end
