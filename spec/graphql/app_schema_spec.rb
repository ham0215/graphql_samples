require 'rails_helper'

RSpec.describe AppSchema do
  let(:current_definition) { described_class.to_definition }
  let(:printout_definition) { File.read(Rails.root.join('docs/graphql/schema.graphql')) }

  it 'equals dumped schema, `rake graphql:schema:dump` please!' do
    expect(current_definition).to eq(printout_definition)
  end
end
