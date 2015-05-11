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
      first_name:     { oi_name: 'FN',  field_value: '#{FN}',  description: 'First Name' },
      last_name:      { oi_name: 'LN',  field_value: '#{LN}',  description: 'Last Name' },
      email:          { oi_name: 'EM',  field_value: '#{EM}',  description: 'Email' },
      street_address: { oi_name: 'AD1', field_value: '#{AD1}', description: 'Street Address' },
      city:           { oi_name: 'CI',  field_value: '#{CI}',  description: 'City' },
      state:          { oi_name: 'ST',  field_value: '#{ST}',  description: 'State' },
      postal_code:    { oi_name: 'PO',  field_value: '#{PO}',  description: 'Postal Code' },
      country:        { oi_name: 'CO',  field_value: '#{CO}',  description: 'Country' },
      home_phone:     { oi_name: 'HP',  field_value: '#{HP}',  description: 'Home Phone Number' },
      mobile_phone:   { oi_name: 'MP',  field_value: '#{MP}',  description: 'Mobile Phone Number' },
      gender:         { oi_name: 'G',   field_value: '#{G}',   description: 'Gender' },
      date_of_birth:  { oi_name: 'DOB', field_value: '#{DOB}', description: 'Date of Birth' }
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
      DATA_FIELDS.map do |data_point|
        { data_point[0] => data_point[1][:field_value] }
      end
    end

    def self.data_field_oi_name(field_name)
      DATA_FIELDS[field_name][:oi_name]
    end

  end

end
