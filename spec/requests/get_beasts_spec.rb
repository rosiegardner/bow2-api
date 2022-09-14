require 'rails_helper'

describe "get all beasts route", :type => :request do
  let!(:beasts) { FactoryBot.create_list(:beast, 60)}

  before { get '/beasts' }

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

  it 'returns all beasts' do
    expect(JSON.parse(response.body).size).to eq(60)
  end

  it 'returns a beast by id' do
    @beast = Beast.create!(:daemon => 'hellhound', :breed => "red_witch", :name => "hex", :age => 666, :desc => "a good dog")
    get "/beasts/#{@beast.id}"
    beast_response = []
    beast_response << JSON.parse(response.body)
    expect(beast_response.size).to eq(1)
  end

  it 'returns 10 beasts at a time' do
    get '/beasts?page=1'
    expect(JSON.parse(response.body).size).to eq(10)
  end
end

describe "get beast by name" do

  before do
    post '/beasts', params: { :daemon => 'shadow cat', :breed => "wicked lady", :name => "haxan", :age => 66, :desc => 'a demonic cat'}
  end
  
  it 'searches beast by name' do
    get '/beasts?name=hax'
    puts response.body
    expect(JSON.parse(response.body)[0]['name']).to eq('haxan')
  end
end