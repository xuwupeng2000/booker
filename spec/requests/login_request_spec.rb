require 'rails_helper'

RSpec.describe 'POST /login', type: :request do
  let(:user) { create(:user) }
  let(:url) { '/users/sign_in' }
  let(:params) do
    {
      user: {
        email: user.email,
        password: user.password
      }
    }
  end

  context 'when params are correct' do
    before do
      post url, params: params
    end

    it 'returns 200' do
      expect(response).to have_http_status(200)
    end

    it 'returns JTW token in authorization header' do
      expect(
        response.headers['Authorization']
      ).to be_present
    end
  end

  context 'when login params are incorrect' do
    before { post url, params: {user: {email: 'nah@nah.com', password: 'passpass'}} }

    it 'returns unathorized status' do
      expect(response.status).to eq 401
    end
  end
end

RSpec.describe 'DELETE /logout', type: :request do
  let(:url) { '/users/sign_out' }

  it 'returns 200, no content' do
    delete url
    expect(response).to have_http_status(200)
  end
end
