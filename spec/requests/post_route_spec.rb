require 'rails_helper'

describe "post a beast route", :type => :request do

  before do
    post '/beasts', params: { :daemon => 'hellhound', :breed => "red_witch", :name => "hex", :age => 666, :desc => "a good dog"}
  end

  it 'returns a beast' do
    expect(JSON.parse(response.body)['daemon']).to eq('hellhound')
    expect(JSON.parse(response.body)['breed']).to eq('red_witch')
    expect(JSON.parse(response.body)['name']).to eq('hex')
    expect(JSON.parse(response.body)['age']).to eq(666)
    expect(JSON.parse(response.body)['desc']).to eq('a good dog')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end

end