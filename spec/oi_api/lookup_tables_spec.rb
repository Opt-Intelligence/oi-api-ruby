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

  end

end
