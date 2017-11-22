class Vote
  include Mongoid::Document
  include Mongoid::Timestamps

  field :owner_id, type:String
  field :post_id, type: String
  field :voteType, type: Bool # True => upvote; False => downvote
end
