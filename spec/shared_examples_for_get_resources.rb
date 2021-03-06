RSpec.shared_examples 'GET resources' do |resource_name, options|

  it 'returns 200 OK' do
    expect(response.code).to eql 200
  end

  it 'returns HTTParty::Response' do
    expect(response.class).to eql HTTParty::Response
  end

  it 'returns all resources' do
    expect(response.size).to eql options[:expected_num_resources]
  end

end
