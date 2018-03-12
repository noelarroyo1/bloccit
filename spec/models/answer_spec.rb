require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:answer) { Answer.create!(body: "New Answer Body") }

  describe "attributes" do
    it "has body attribute" do
      expect(answer).to have_attributes(body: "New Answer Body")
    end
  end
  
end
