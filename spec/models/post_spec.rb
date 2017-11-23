require 'rails_helper'

RSpec.describe Post, type: :model do
   before(:each) do 
    @beforeCount = Post.all.count
    @user = User.first
    @post = @user.posts.create!(title: "test post", body: "This is a test")
  end

  describe "creation" do 
    it "should have one more item after being created" do 
      expect(Post.all.count).to eq(@beforeCount + 1)
    end 
  end

  describe "validations" do 
    it "should not let post be created without title" do 
      @post.title = nil
      expect(@post).to_not be_valid
    end 

    it "should not let post be created without body" do 
      @post.body = nil
      expect(@post).to_not be_valid
    end 
  end 
end
