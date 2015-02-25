require 'rails_helper'

RSpec.describe Actor, type: :model do

  subject(:actor) { create(:statement).actor }
  let(:name) { attributes_for(:actor).fetch(:name) }
  let(:jogging) { Activity.find(1) }

  it 'has a name' do
    expect(actor.name).to eq(name)
  end

  it 'has statements' do
    expect(actor.statements.count).to be > 0
  end

  it 'has activities' do
    expect(actor.activities.count).to be > 0
  end

  it 'has been jogging' do
    expect(actor.activities).to include(jogging)
  end

end
