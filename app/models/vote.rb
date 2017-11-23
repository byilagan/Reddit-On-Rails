class Vote
  include Mongoid::Document
  include Mongoid::Timestamps 

  belongs_to :user
  belongs_to :post, optional: true
  belongs_to :comment, optional: true

  field :voteType, type: Boolean
end
