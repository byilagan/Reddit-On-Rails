require 'rails_helper'

RSpec.describe Vote, type: :model do
   before(:each) do 
    @beforeCount = Vote.all.count
    @user = User.first
    @post = Post.first
    @vote = @post.votes.create!(user_id: @user.id, voteType: true)
  end

  describe "creation" do 
    it "should have one more item after being created" do 
      expect(Vote.all.count).to eq(@beforeCount + 1)
    end 
  end

end
