require 'rails_helper'

RSpec.describe Statement, type: :model do

  subject(:statement) { create(:statement) }
  let(:description) { "Ron went jogging." }

  it 'has an actor' do
    expect(statement.actor).to be_kind_of(Actor)
  end

  it 'has an activity' do
    expect(statement.activity).to be_kind_of(Activity)
  end

  it 'has a nice description' do
    expect(statement.to_s).to eq(description)
  end

end
