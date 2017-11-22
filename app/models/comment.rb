class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  field :owner_id, type:String
  field :post_id, type: String
  field :body, type: String
end
