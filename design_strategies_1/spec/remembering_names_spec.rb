require 'name_storage'

describe 'the remembering names method' do
  it 'gives a friendly response' do
    expect(add_name("Genny")).to eq "Name stored!"
  end
end
