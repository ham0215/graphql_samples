require 'rails_helper'

RSpec.describe Mutations::CreateLink do
  subject(:mutation) { described_class.new(object: nil, context: context, field: nil).resolve(**args) }

  let(:args) { { url: url, description: description } }
  let(:url) { 'http://example.com' }
  let(:description) { 'description' }

  let(:context) { { current_user: current_user } }
  let(:current_user) { FactoryBot.create :user }

  context 'データが正しく入力されている場合' do
    it 'linkが新規登録されること' do
      expect(mutation.description).to eq description
      expect(mutation.url).to eq url
    end
  end
end
