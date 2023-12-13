require 'rails_helper'

RSpec.describe Article, type: :model do
  it "Is Valid Title" do 
    user = User.new(email:"ppcantalice@gmail.com", name:"pedro", password:"pedro1")
    article = Article.new(user:user)
    expect(article).to be_valid
  end
end
