class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :owner_id, type:String
  field :title, type: String
  field :body, type: String
end
