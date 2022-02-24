require_relative '../recreate_lead'

describe Object, '#recreate_lead' do

  context 'when body is valid' do
    let(:body) { {nome_completo: 'Jackeline Pereira', email: 'teste@test', phone_number: '+5511981961359'} }

    it 'expect to be successful' do
      expect(Object.recreate_lead(body).status).to eq(200)
    end
  end
end
