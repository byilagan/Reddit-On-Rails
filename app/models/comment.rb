class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user
  belongs_to :post
  has_many :votes

  field :post_id, type: String
  field :body, type: String
  field :points, type: Integer

  validates_presence_of :body
end
