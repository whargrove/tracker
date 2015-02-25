require 'rails_helper'

RSpec.describe Activity, type: :model do

  subject(:activity) { create(:statement).activity }
  let(:name) { attributes_for(:activity).fetch(:name) }
  let(:description) { attributes_for(:activity).fetch(:description) }

  it 'has a name' do
    expect(activity.name).to eq(name)
  end

  it 'has a description' do
    expect(activity.description).to eq(description)
  end

  it 'has actors' do
    expect(activity.actors.count).to be > 0
  end

end
