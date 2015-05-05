module OiApi

  module LookupTables

    CATEGORIES = {
      'Beauty & Fashion' => 1000,
      'Business' => 1001,
      'Entertainment' => 1002,
      'Food & Dining' => 1003,
      'Health & Fitness' => 1004,
      'Home & Family' => 1005,
      'Investing' => 1006,
      'Market Research' => 1007,
      'News & Education' => 1008,
      'Personal Finance' => 1009,
      'Retail & E-commerce' => 1010,
      'Social' => 1011,
      'Travel' => 1012,
    }

    DATA_FIELDS = {
      first_name:     { value: 'FN',  field_value: '#{FN}',  description: 'First Name' },
      last_name:      { value: 'LN',  field_value: '#{LN}',  description: 'Last Name' },
      email:          { value: 'EM',  field_value: '#{EM}',  description: 'Email' },
      street_address: { value: 'AD1', field_value: '#{AD1}', description: 'Street Address' },
      city:           { value: 'CI',  field_value: '#{CI}',  description: 'City' },
      state:          { value: 'ST',  field_value: '#{ST}',  description: 'State' },
      postal_code:    { value: 'PO',  field_value: '#{PO}',  description: 'Postal Code' },
      country:        { value: 'CO',  field_value: '#{CO}',  description: 'Country' },
      home_phone:     { value: 'HP',  field_value: '#{HP}',  description: 'Home Phone Number' },
      mobile_phone:   { value: 'MP',  field_value: '#{MP}',  description: 'Mobile Phone Number' },
      gender:         { value: 'G',   field_value: '#{G}',   description: 'Gender' },
      date_of_birth:  { value: 'DOB', field_value: '#{DOB}', description: 'Date of Birth' }
    }

    def self.category_names
      CATEGORIES.keys
    end

    def self.category_ids
      CATEGORIES.values
    end

    #  returns an array of hashes used when posting to OiApi
    #  to create a new data transfer. The resulting structure
    #  looks like:
    #  [
    #    { email: '#{EM}' },
    #    { first_name: '#{FN}' },
    #    { last_name: '#{LN}' },
    #    { zip: '#{PO}' },
    #    { gender: '#{G}' },
    #    ...
    #  ]
    #
    #  This tells OiApi what attribute names to use when posting
    #  contacts back to our endpoint
    #
    def self.data_fields
      OiApi::LookupTables::DATA_FIELDS.map do |data_point|
        { data_point[0] => data_point[1][:field_value] }
      end
    end

  end

end
