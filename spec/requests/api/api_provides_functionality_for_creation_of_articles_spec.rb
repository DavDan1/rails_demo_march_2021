RSpec.describe "POST /api/articles", type: :request do
    before do
        post '/api/articles', params: {title: 'Not so fun with node', body:'It is a configurationn hell'}
    end
    it 'is expected to respond with 201' do
        exoect(response).to have_http_status 201
    end

    it 'is expected to respond with success' do
        expect(JSON.parse(response.body)['messaage']).to eq 'Your article was successfully created'
    end
end