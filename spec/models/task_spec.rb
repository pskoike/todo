require 'rails_helper'

RSpec.describe Task, type: :model do
  subject {
    described_class.new(title: 'Some Title')
  }
  it "should be valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "should not be valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end
  it "it should have complete attribute == false by default" do
    expect(subject.complete).to eq(false)
  end
end
