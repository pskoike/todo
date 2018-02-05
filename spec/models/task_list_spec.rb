require 'rails_helper'

RSpec.describe TaskList, type: :model do
  subject {
    described_class.new(title: 'Some Title', description: 'Some description')
  }
  it "should be valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "should be valid without a description" do
    subject.description = nil
    expect(subject).to be_valid
  end
  it "should not be valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end
  it "it should have public attribute == false by default" do
    expect(subject.public).to eq(false)
  end
end
