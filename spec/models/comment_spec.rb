require 'rails_helper'

RSpec.describe Comment, type: :model do
  before(:each) do 
    @beforeCount = Comment.all.count
    @user = User.first
    @post = Post.first
    @comment = @post.comments.create!(body: "This is a test", user_id: @user.id)
  end

  describe "creation" do 
    it "should have one more item after being created" do 
      expect(Comment.all.count).to eq(@beforeCount + 1)
    end 
  end

  describe "validations" do 
    it "should not let comment be created without body" do 
      @comment.body = nil
      expect(@comment).to_not be_valid
    end 
  end 
end
