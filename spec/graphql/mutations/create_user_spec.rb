require 'rails_helper'

RSpec.describe Mutations::CreateUser do
  subject(:mutation) { described_class.new(object: nil, context: {}, field: nil).resolve(args) }

  let(:args) do
    {
      name: name,
      auth_provider: {
        email: {
          email: email,
          password: 'hogehoge'
        }
      }
    }
  end
  let(:name) { 'ham' }
  let(:email) { 'email@example.com' }

  context 'データが正しく入力されている場合' do
    it 'userが新規登録されること' do
      expect(mutation.name).to eq name
      expect(mutation.email).to eq email
    end
  end
end
