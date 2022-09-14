require 'rails_helper'

describe 'get a beast route with exception handler', :type => :request do

  before { get '/beasts/200' }

  it 'returns a RecordNotFound error' do
    expect(response).to have_http_status(:not_found)
  end

end

describe 'post a beast route with exception handlers', :type => :request do

  before do
    post '/beasts', params: { :daemon => 'hellhound', :breed => "red_witch", :name => "hex", :age => 666, :desc => nil}
  end

  it 'returns a RecordInvalid error' do
    expect(response).to have_http_status(:unprocessable_entity)
  end
end